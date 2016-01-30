#include "script_component.hpp"

if(count GVAR(deleteQueue) == 0) exitWith {};

ctrlDelete (GVAR(deleteQueue) select 0);
GVAR(deleteQueue) deleteAt 0;