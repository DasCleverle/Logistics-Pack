#include "script_component.hpp"

params ["_unit", "_status"];

if !(_unit isEqualTo player) then {
    hint localize format [LSTRING(STATUSHINT), name _unit, _status];
};

[] call FUNC(refreshDialog);