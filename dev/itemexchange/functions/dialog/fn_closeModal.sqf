#include "script_component.hpp"

params ["_idc"];

compile format ['
    params ["_control"];
    GVAR(deleteQueue) pushBack ((ctrlParent _control) displayCtrl %1);

    private _boxIndex = missionNamespace getVariable (QGVAR(modal_boxIndex) + "%1");
    GVAR(modals) deleteAt (GVAR(modals) find _boxIndex);
', _idc];