#include "script_component.hpp"

params ["_className"];
private _configBase = [_className] call FUNC(getItemConfigBase);

getText (configFile >> _configBase >> _className >> "displayName");