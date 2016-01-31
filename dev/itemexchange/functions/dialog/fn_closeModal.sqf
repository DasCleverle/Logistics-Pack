#include "script_component.hpp"

params ["_idc"];

compile format ['
    params ["_control"];
    GVAR(deleteQueue) pushBack ((ctrlParent _control) displayCtrl %1);

    private _boxIndex = missionNamespace getVariable (QGVAR(modal_boxIndex) + "%1");
    GVAR(modals) deleteAt (GVAR(modals) find _boxIndex);

    private _box = missionNamespace getVariable (QGVAR(modal_box) + "%1");
    private _checkbox = (_firstBox getVariable [QGVAR(checkbox), [controlNull]]);
    (_checkbox select 0) cbSetChecked false;
    GVAR(selectedBoxes) deleteAt (GVAR(selectedBoxes) find _box);
', _idc];