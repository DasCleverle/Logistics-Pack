#include "script_component.hpp"

params ["_idc"];

compile format ['
    disableSerialization;

    params ["_control", "_button", "_x", "_y"];

    private _display = ctrlParent _control;
    private _modal = _display displayCtrl %1;

    private _modalPos = ctrlPosition _control;
    private _modalX = _modalPos select 0;
    private _modalY = _modalPos select 1;

    GVAR(movingModal) = [_modal];
    GVAR(movingOffset) = [_x - _modalX, _y - _modalY];
', _idc];