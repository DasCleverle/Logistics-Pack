#include "script_component.hpp"

params ["_idc"];

compile format ['
    disableSerialization;
    params ["_control", "_checkedNum"];
    private _checked = _checkedNum == 1;
    private _box = missionNamespace getVariable [QGVAR(modal_box) + "%1", objNull];

    if(isNull _box) exitWith {};

    if(_checked) then {
        GVAR(selectedBoxes) pushBack _box;
        _box setVariable [QGVAR(checkbox), [_control]];

        if(count GVAR(selectedBoxes) > 2) then {
            private _firstBox = GVAR(selectedBoxes) select 0;
            private _checkbox = (_firstBox getVariable [QGVAR(checkbox), [controlNull]]);

            (_checkbox select 0) cbSetChecked false;
            GVAR(selectedBoxes) deleteAt 0;
        };

    }
    else {
        private _index = GVAR(selectedBoxes) find _box;

        if(_index < 0) exitWith {};

        GVAR(selectedBoxes) deleteAt _index;
        _box setVariable [QGVAR(checkbox), nil];
    };
', _idc];