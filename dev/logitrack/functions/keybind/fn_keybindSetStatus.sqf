#include "script_component.hpp"

params ["_status"];

compile format ['
    if(!QGVAR(active) || { !HAS_TRACKER }) exitWith {};
    [%1, true] call FUNC(setStatus);
',_status];