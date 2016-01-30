#include "script_component.hpp"
disableSerialization;

params ["_modal"];

systemChat "modal onload";

private _box = missionNamespace getVariable [QGVAR(modal_box) + str ctrlIDC _modal, objNull];

if(isNull _box) exitWith { systemChat "modal box is null"; };

private _display = ctrlParent _modal;
private _lstBoxes = _display displayCtrl IDC_LST_BOXES;

private _boxIndex = _box getVariable QGVAR(boxIndex);
private _btnHeader = _modal controlsGroupCtrl IDC_BTN_HEADER;

_btnHeader ctrlSetText (_lstBoxes lbText _boxIndex);

private _lstItems = _modal controlsGroupCtrl IDC_LST_ITEMS;
private _items = [_box] call FUNC(getAllItems);

{
    private _itemName = [_x] call FUNC(getItemName);
    private _count = (_items select 1) select _foreachIndex;

    _lstItems lbAdd format ["%1x %2", _count, _itemName];
} foreach (_items select 0);