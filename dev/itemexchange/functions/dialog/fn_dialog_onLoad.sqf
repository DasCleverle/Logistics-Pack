#include "script_component.hpp"
disableSerialization;

params ["_display"];

private _lstBoxes = _display displayCtrl IDC_LST_BOXES;
private _btnHeader = _display displayCtrl IDC_BTN_HEADER;
private _btnClose = _display displayCtrl IDC_BTN_CLOSE;

_btnHeader ctrlSetText "ItemExchange";
_btnHeader ctrlAddEventHandler ["MouseButtonDown", [IDC_GRP_MAIN] call FUNC(btnHeader_MouseDown)];
_btnHeader ctrlAddEventHandler ["MouseButtonUp", FUNC(btnHeader_MouseUp)];
_btnHeader ctrlAddEventHandler ["MouseMoving", FUNC(btnHeader_MouseMoving)];

_btnClose ctrlAddEventHandler ["ButtonClick", { closeDialog 0; }];
_btnClose ctrlSetTooltip "Warning: This will close the whole dialog.";

_counter = 1;
{
    if(getText (configFile >> "CfgVehicles" >> typeOf _x >> "vehicleClass") == "Ammo") then {
        private _displayName = getText(configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
        private _item = _lstBoxes lbAdd format ["(%2) %1", _displayName, _counter];
        private _color = [] call FUNC(getRandomColor);

        _lstBoxes lbSetPicture [_item, QDATAPATH(icon_dot.paa)];
        _lstBoxes lbSetPictureColor [_item, _color];
        _lstBoxes lbSetPictureColorSelected [_item, _color];

        GVAR(dots) pushBack [_counter, _color, visiblePosition _x];

        missionNamespace setVariable [QGVAR(box) + str _item, _x];
        _x setVariable [QGVAR(boxIndex), _item];

        _counter = _counter + 1;
    };
} foreach (player nearSupplies BOX_DISTANCE);