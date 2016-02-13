#include "script_component.hpp"

private _display = findDisplay IDD_ITEMEXCHANGE;

if(isNull _display) exitWith {};

for "_idc" from IDC_GRP_MODAL to GVAR(currentModalIDC) do {
    private _control = _display displayCtrl _idc;
    if !(isNull _control) then {
        _prgLoad = _control controlsGroupCtrl IDC_PRG_LOAD;
        _box = missionNamespace getVariable (QGVAR(modal_box) + str _idc);

        _mass = [_box] call FUNC(getContainerMass);
        _maximumLoad = getNumber (configFile >> "CfgVehicles" >> typeOf _box >> "maximumLoad");

        _prgLoad progressSetPosition (_mass / _maximumLoad);
    };
};