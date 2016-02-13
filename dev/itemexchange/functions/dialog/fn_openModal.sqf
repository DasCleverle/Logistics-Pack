#include "script_component.hpp"
disableSerialization;

params ["_control"];

private _display = ctrlParent _control;
private _boxIndex = lbCurSel (_display displayCtrl IDC_LST_BOXES);
private _box = missionNamespace getVariable [QGVAR(box) + str _boxIndex, objNull];
private _idc = GVAR(currentModalIDC) + 1;

if(isNull _box || {_boxIndex in GVAR(modals)}) exitWith {};

GVAR(modals) pushBack _boxIndex;
GVAR(currentModalIDC) = _idc;
missionNamespace setVariable [QGVAR(modal_box) + str _idc, _box];
missionNamespace setVariable [QGVAR(modal_boxIndex) + str _idc, _boxIndex];

private _modal = _display ctrlCreate [QGVAR(grpModal), _idc];
private _pos = ctrlPosition _modal;
private _offset = count GVAR(modals) - 1;

_modal ctrlSetPosition [
    (_pos select 0) + _offset * 1.5 * GUIMIN_3_2(1.2, 25),
    (_pos select 1) + _offset * 1.5 * 4/3 * GUIMIN_3_2(1.2, 25),
    _pos select 2,
    _pos select 3
];
_modal ctrlCommit 0;