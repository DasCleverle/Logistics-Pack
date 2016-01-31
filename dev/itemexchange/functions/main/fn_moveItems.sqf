#include "script_component.hpp"

params ["_className","_count","_source","_target"];

private _configBase = [_className] call FUNC(getItemConfigBase);

if(_count < 1) then {
    _count = 1e999;
};

call {
    if(_configBase == "CfgWeapons") exitWith {
        _count = [getWeaponCargo _source, _className, _count] call FUNC(getRealItemCount);

        [_source, _className, _count] call CBA_fnc_removeWeaponCargoGlobal;
        [_source, _className, _count] call CBA_fnc_removeItemCargoGlobal;

        _target addWeaponCargoGlobal [_className, _count];
    };
    if(_configBase == "CfgMagazines") exitWith {
        _count = [getMagazineCargo _source, _className, _count] call FUNC(getRealItemCount);

        _result = [_source, _className, _count] call CBA_fnc_removeMagazineCargoGlobal;

        _target addMagazineCargoGlobal [_className, _count];
    };
    if(_configBase == "CfgVehicles") exitWith {
        _count = [getBackpackCargo _source, _className, _count] call FUNC(getRealItemCount);

        _result = [_source, _className, _count] call CBA_fnc_removeBackpackCargoGlobal;

        _target addBackpackCargoGlobal [_className, _count];
    };
};