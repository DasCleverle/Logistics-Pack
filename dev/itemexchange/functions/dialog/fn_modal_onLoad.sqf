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
_btnClose ctrlAddEventHandler ["ButtonClick", [ctrlIDC _modal] call FUNC(closeModal)];

private _btnSelect = _modal controlsGroupCtrl IDC_BTN_SELECT;
_btnSelect ctrlAddEventHandler ["ButtonClick", [ctrlIDC _modal] call FUNC(btnSelect_click)];

private _chkSelect = _modal controlsGroupCtrl IDC_CHK_SELECT;
_chkSelect ctrlAddEventHandler ["CheckedChanged", [ctrlIDC _modal] call FUNC(chkSelect_changed)];

private _lstItems = _modal controlsGroupCtrl IDC_LST_ITEMS;
_lstItems ctrlAddEventHandler ["LBDblClick", [ctrlIDC _modal, 1] call FUNC(dialog_moveItems)];

{
    _x params ["_idc", "_count"];
    (_modal controlsGroupCtrl _idc) ctrlAddEventHandler ["ButtonClick", [ctrlIDC _modal, _count] call FUNC(dialog_moveItems)];
} foreach [
    [IDC_BTN_MOVE1, 1],
    [IDC_BTN_MOVE10, 10],
    [IDC_BTN_MOVEALL, -1]
];

GVAR(itemLists) pushBack [_lstItems, _box];