#include "script_component.hpp"

params ["_status", ["_isHotkey", false]];

if(_status < MINSTATUS || { _status > MAXSTATUS }) exitWith { ERROR_WITH_TITLE("DLP Logitrack", "Invalid value for status has been provided.") };

player setVariable [QGVAR(status), _status, true];

if(_isHotkey) then {
    hint localize format [LSTRING(STATUSHINT), name player, _status];
};

[player, _status] remoteExecCall [QUOTE(FUNC(setStatusRemote)), side player, false];