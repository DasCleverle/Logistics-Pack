#include "script_component.hpp"

GVAR(components) = [
    "dlp_main",
    "itemexchange",
    "logitrack"
];

{
    missionNamespace setVariable [QUOTE(PREFIX) + "_" + _x + "_active", false];
} foreach GVAR(components);

GVAR(active) = true;