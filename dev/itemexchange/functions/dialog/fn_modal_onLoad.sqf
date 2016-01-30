#include "script_component.hpp"
disableSerialization;

params ["_modal"];

private _box = missionNamespace getVariable [QGVAR(modal_box) + str ctrlIDC _modal, objNull];
private _boxIndex = _box getVariable QGVAR(boxIndex);

if(isNull _box) exitWith { systemChat "modal box is null"; };

private _display = ctrlParent _modal;
private _lstBoxes = _display displayCtrl IDC_LST_BOXES;

private _btnHeader = _modal controlsGroupCtrl IDC_BTN_HEADER;
_btnHeader ctrlAddEventHandler ["MouseButtonDown", [ctrlIDC _modal] call FUNC(btnHeader_MouseDown)];
_btnHeader ctrlAddEventHandler ["MouseButtonUp", FUNC(btnHeader_MouseUp)];
_btnHeader ctrlAddEventHandler ["MouseMoving", FUNC(btnHeader_MouseMoving)];
_btnHeader ctrlSetText (_lstBoxes lbText _boxIndex);

private _btnClose = _modal controlsGroupCtrl IDC_BTN_CLOSE;
_btnClose ctrlAddEventHandler ["MouseButtonUp", [ctrlIDC _modal] call FUNC(closeModal)];

private _lstItems = _modal controlsGroupCtrl IDC_LST_ITEMS;
private _items = [_box] call FUNC(getAllItems);

{
    private _itemName = [_x] call FUNC(getItemName);
    private _count = (_items select 1) select _foreachIndex;

    _lstItems lbAdd format ["%1x %2", _count, _itemName];
} foreach (_items select 0);