#include "script_component.hpp"

disableSerialization;

if(isNil QGVAR(movingModal)) exitWith {};

params ["_control", "_x", "_y"];

private _modal = GVAR(movingModal) select 0;
private _pos = ctrlPosition _modal;

_modal ctrlSetPosition [
    _x + (_pos select 0) - (GVAR(movingOffset) select 0),
    _y + (_pos select 1) - (GVAR(movingOffset) select 1),
    _pos select 2,
    _pos select 3
];
_modal ctrlCommit 0;