#include "script_component.hpp"
disableSerialization;

params ["_control"];

private _display = ctrlParent _control;
private _boxIndex = lbCurSel (_display displayCtrl IDC_LST_BOXES);
private _box = missionNamespace getVariable [QGVAR(box) + str _boxIndex, objNull];
private _idc = GVAR(currentModalIDC) + 1;

if(isNull _box || {_box in GVAR(openedBoxes)}) exitWith { systemChat "couldn't open modal" };

GVAR(openedBoxes) pushBack _box;
GVAR(currentModalIDC) = _idc;
missionNamespace setVariable [QGVAR(modal_box) + str _idc, _box];

_display ctrlCreate [QGVAR(grpModal), _idc];