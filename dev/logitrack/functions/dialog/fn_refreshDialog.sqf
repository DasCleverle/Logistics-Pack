#include "script_component.hpp"
disableSerialization;

params [["_display", findDisplay IDD_LOGITRACKER]];

private _lstStatus = _display displayCtrl IDC_LST_STATUS;

lbClear _lstStatus;
{
    if(UHAS_TRACKER(_x) && side _x == side player) then {
        private ["_status", "_color", "_item"];
        _status = _x getVariable [QGVAR(status),2];
        _color = GVAR(colors) select (_status - 1);

        _item = _lstStatus lbAdd format ["%1, Status %2", name _x, _status];
        _lstStatus lbSetColor [_item, _color];
    };
} foreach allPlayers;