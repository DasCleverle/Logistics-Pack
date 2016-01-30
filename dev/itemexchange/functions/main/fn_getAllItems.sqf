#include "script_component.hpp"

params ["_object"];

private _classes = [];
private _amounts = [];

{
    _classes append (_x select 0);
    _amounts append (_x select 1);
} foreach [
    getWeaponCargo _object,
    getMagazineCargo _object,
    getItemCargo _object,
    getBackpackCargo _object
];

[_classes, _amounts];