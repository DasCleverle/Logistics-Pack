#include "script_component.hpp"

params ["_idc"];

compile format ['
    disableSerialization;
    params ["_control"];

    private _modal = (ctrlParent _control) displayCtrl %1;
    private _chkSelect = _modal controlsGroupCtrl IDC_CHK_SELECT;
    private _checked = !(cbChecked _chkSelect);

    _chkSelect cbSetChecked _checked;
    [_chkSelect, [0,1] select _checked] call ([%1] call FUNC(chkSelect_changed));

', _idc];