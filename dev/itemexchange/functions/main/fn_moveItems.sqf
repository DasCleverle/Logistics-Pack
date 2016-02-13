#include "script_component.hpp"

params ["_className","_count","_source","_target"];

private _configBase = [_className] call FUNC(getItemConfigBase);
private _targetMass = [_target] call FUNC(getContainerMass);
private _maximumLoad = getNumber (configFile >> "CfgVehicles" >> typeOf _target >> "maximumLoad");

if(_count < 1) then {
    _count = 1e999;
};

call {
    if(_configBase == "CfgWeapons") exitWith {
        _count = [getWeaponCargo _source, _className, _count] call FUNC(getRealItemCount);
        _itemMass = [_className, _count] call FUNC(getItemMass);

        if(_targetMass + _itemMass > _maximumLoad) exitWith {};

        [_source, _className, _count] call CBA_fnc_removeWeaponCargoGlobal;
        [_source, _className, _count] call CBA_fnc_removeItemCargoGlobal;

        _target addWeaponCargoGlobal [_className, _count];
    };
    if(_configBase == "CfgMagazines") exitWith {
        _count = [getMagazineCargo _source, _className, _count] call FUNC(getRealItemCount);
        _itemMass = [_className, _count] call FUNC(getItemMass);

        if(_targetMass + _itemMass > _maximumLoad) exitWith {};

        [_source, _className, _count] call CBA_fnc_removeMagazineCargoGlobal;

        _target addMagazineCargoGlobal [_className, _count];
    };
    if(_configBase == "CfgVehicles") exitWith {
        _count = [getBackpackCargo _source, _className, _count] call FUNC(getRealItemCount);
        _itemMass = [_className, _count] call FUNC(getItemMass);

        if(_targetMass + _itemMass > _maximumLoad) exitWith {};

        [_source, _className, _count] call CBA_fnc_removeBackpackCargoGlobal;

        _target addBackpackCargoGlobal [_className, _count];
    };
};