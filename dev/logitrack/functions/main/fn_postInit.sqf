#include "script_component.hpp"

private _addonName = "DLP";
[_addonName, QGVAR(openLogitracker), localize LSTRING(KEYBIND_OPENTRACKER), FUNC(openLogitracker), "", [36, [true, false, false]]] call CBA_fnc_addKeybind;

for "_i" from MINSTATUS to MAXSTATUS do {
    [_addonName, QGVAR(setStatus) + str _i, format[localize LSTRING(KEYBIND_SETSTATUS), _i], [_i] call FUNC(keybindSetStatus), "", [_i + 1, [false, true, false]]] call CBA_fnc_addKeybind;
};