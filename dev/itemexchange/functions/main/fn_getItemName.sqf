#include "script_component.hpp"

params ["_className"];

{
    if(isClass (configFile >> _x >> _className)) exitWith {
        getText (configFile >> _x >> _className >> "displayName");
    };
} foreach ["CfgWeapons", "CfgMagazines", "CfgVehicles"];