#include "script_component.hpp"

if(!GVAR(active) || { !HAS_TRACKER } || { dialog }) exitWith {};

(findDisplay 46) createDisplay QGVAR(dialog);