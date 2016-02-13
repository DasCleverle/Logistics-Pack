#include "script_component.hpp"

GVAR(deleteQueue) = [];

GVAR(currentModalIDC) = IDC_GRP_MODAL;
GVAR(modals) = [];
GVAR(dots) = [];
GVAR(itemLists) = [];

GVAR(selectedBoxes) = [];

[FUNC(pfhDeleteQueue),0,[]] call CBA_fnc_addPerFrameHandler;
[FUNC(pfhRefreshLists),0,[]] call CBA_fnc_addPerFrameHandler;

addMissionEventHandler ["Draw3D", {
    {
        _x params ["_id", "_color", "_pos"];
        private _copyPos = +_pos;
        _copyPos set [2, (_copyPos select 2) + 0.5];
        drawIcon3D [
            "\a3\ui_f\data\IGUI\RscIngameUI\RscHint\indent_gr.paa",
            _color,
            _copyPos,
            1, 1, 0,
            str _id, 2, 0.05, "PuristaMedium"
        ];
    } forEach GVAR(dots);
}];

["DLP", QGVAR(openMenu), "Open ItemExchange-Menu", FUNC(openMenu), "", [36, [false, true, false]]] call CBA_fnc_addKeybind;