#include "script_component.hpp"
disableSerialization;

params ["_display"];

private _lstBoxes = _display displayCtrl IDC_LST_BOXES;
private _btnHeader = _display displayCtrl IDC_BTN_HEADER;
_btnHeader ctrlSetText "ItemExchange";

_counter = 1;
{
    if(getText (configFile >> "CfgVehicles" >> typeOf _x >> "vehicleClass") == "Ammo") then {
        _displayName = getText(configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
        _item = _lstBoxes lbAdd format ["(%2) %1", _displayName, _counter];

        missionNamespace setVariable [QGVAR(box) + str _item, _x];
        _x setVariable [QGVAR(boxIndex), _item];

        _counter = _counter + 1;
    };
} foreach (player nearSupplies BOX_DISTANCE);