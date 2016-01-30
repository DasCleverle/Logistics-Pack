#include "script_component.hpp"

GVAR(active) = true;

private ["_colorsDefault", "_tooltipsDefault", "_elementCount"];

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

params [["_colors", _colorsDefault], ["_tooltips", _tooltipsDefault]];

_elementCount = MAXSTATUS - MINSTATUS + 1;

if(count _colors < _elementCount || { count _tooltips < _elementCount }) exitWith { ERROR_WITH_TITLE("DLP Logitrack", "Not enough values for color or toolips have been provided.") };

GVAR(colors) = _colors;
GVAR(tooltips) = _tooltips;