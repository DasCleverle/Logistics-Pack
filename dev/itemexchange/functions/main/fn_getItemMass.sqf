#include "script_component.hpp"

params ["_className", ["_count", 1]];
private _configBase = [_className] call FUNC(getItemConfigBase);
private _mass = 0;

{
    if(isNumber _x) exitWith {
        _mass = (getNumber _x) * _count;
    };
} foreach [
    configFile >> _configBase >> _className >> "ItemInfo" >> "mass",
    configFile >> _configBase >> _className >> "WeaponSlotsInfo" >> "mass",
    configFile >> _configBase >> _className >> "mass"
];

_mass;