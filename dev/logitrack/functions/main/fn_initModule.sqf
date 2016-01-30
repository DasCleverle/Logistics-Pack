#include "script_component.hpp"

params ["_logic"];
private ["_colors", "_tooltips"];

_colors = [];
_tooltips = [];
for "_i" from MINSTATUS to MAXSTATUS do {
    _color = [];
    {
        _color pushBack parseNumber _x;
        nil;
    } count ([(_logic getVariable format ["Status%1Color", _i]), ","] call CBA_fnc_split);

    _tooltips pushBack (_logic getVariable format ["Status%1Tooltip", _i]);
    _colors pushBack _color;
};

[_colors, _tooltips] call FUNC(init);