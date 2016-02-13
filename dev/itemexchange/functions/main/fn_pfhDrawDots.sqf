#include "script_component.hpp"

if(count GVAR(dots) == 0) exitWith {};

{
    _x params ["_id", "_color", "_pos"];
    private _copyPos = +_pos;
    _copyPos set [2, (_copyPos select 2) + 0.5];
    drawIcon3D [
        "\a3\ui_f\data\IGUI\RscIngameUI\RscHint\indent_gr.paa",
        _color,
        _copyPos,
        1, 1, 0,
        str _id, 2, 0.05, "PuristaMedium"
    ];
} forEach GVAR(dots);