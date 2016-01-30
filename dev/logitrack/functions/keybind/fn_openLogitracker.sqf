#include "script_component.hpp"

if(!GVAR(active) || { !HAS_TRACKER } || { dialog }) exitWith {};

createDialog QGVAR(dialog);