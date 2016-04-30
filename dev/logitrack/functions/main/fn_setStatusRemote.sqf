#include "script_component.hpp"

params ["_unit", "_status"];

if(!HAS_TRACKER) exitWith {};

if !(_unit isEqualTo player) then {
    hint format [localize LSTRING(STATUSHINT), name _unit, _status];
};

[] call FUNC(refreshDialog);