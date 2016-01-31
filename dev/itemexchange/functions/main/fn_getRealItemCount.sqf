#include "script_component.hpp"

params ["_cargo", "_className", "_count"];

private _classNames = _cargo select 0;
private _counts = _cargo select 1;

_realCount = _counts select (_className find _className);

if(_count > _realCount) exitWith {
    _realCount;
};
_count;