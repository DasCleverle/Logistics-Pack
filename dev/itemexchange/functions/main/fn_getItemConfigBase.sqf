#include "script_component.hpp"

params ["_className"];

{
    if(isClass (configFile >> _x >> _className)) exitWith {
        _x;
    };
} foreach ["CfgWeapons", "CfgMagazines", "CfgVehicles"];