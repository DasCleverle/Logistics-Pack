#include "script_component.hpp"

private ["_colorsDefault", "_tooltipsDefault", "_elementCount", "_isValid", "_source"];

_colorsDefault = [
    [COLOR_GREEN],
    [COLOR_GREEN],
    [COLOR_YELLOW],
    [COLOR_YELLOW],
    [COLOR_YELLOW],
    [COLOR_RED],
    [COLOR_YELLOW],
    [COLOR_YELLOW]
];

_tooltipsDefault = [];
for "_i" from MINSTATUS to MAXSTATUS do {
    _tooltipsDefault pushBack localize (LSTRING(TOOLTIP_) + str _i);
};

_elementCount = MAXSTATUS - MINSTATUS + 1;
if(!(isNil "_this") && { IS_ARRAY(_this) } && { count _this == 2 }) then {
    _source = _this;
}
else {
    _source = [_colorsDefault, _tooltipsDefault];
};

_isValid = _source params [["_colors", _colorsDefault, [[]], _elementCount], ["_tooltips", _tooltipsDefault, [[]], _elementCount]];
if(!_isValid) exitWith {
    ERROR_WITH_TITLE("DLP Logitrack", "Not enough values for color or toolips have been provided.");
};

GVAR(colors) = _colors;
GVAR(tooltips) = _tooltips;
GVAR(active) = true;
