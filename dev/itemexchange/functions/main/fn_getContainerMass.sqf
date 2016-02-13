#include "script_component.hpp"

params ["_items"];

if(_items isEqualType objNull) then {
    _items = [_items] call FUNC(getAllItems);
};

_items params ["_classes", "_counts"];
private _mass = 0;

{
    _itemMass = [_x, _counts select _foreachIndex] call FUNC(getItemMass);
    ADD(_mass, _itemMass);
} foreach _classes;

_mass;