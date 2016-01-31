#include "script_component.hpp"

params ["_idc", "_count"];

compile format ['
    params ["_control"];

    private _sourceModal = (ctrlParent _control) displayCtrl %1;
    private _sourceBox = missionNamespace getVariable [QGVAR(modal_box) + "%1", objNull];
    private _sourceItemIndex = lbCurSel (_sourceModal controlsGroupCtrl IDC_LST_ITEMS);

    if!(_sourceBox in GVAR(selectedBoxes)) exitWith { systemChat "select box first." };
    if(count GVAR(selectedBoxes) != 2) exitWith { systemChat "must select 2 boxes." };
    if(_sourceItemIndex == -1) exitWith { systemChat "must select item to move." };

    private _sourceBoxIndex = GVAR(selectedBoxes) find _sourceBox;
    private _targetBoxIndex = [0,1] select (_sourceBoxIndex == 0);
    private _targetBox = GVAR(selectedBoxes) select _targetBoxIndex;

    private _sourceItems = ([_sourceBox] call FUNC(getAllItems)) select 0;
    private _sourceItem = _sourceItems select _sourceItemIndex;

    [_sourceItem, %2, _sourceBox, _targetBox] call FUNC(moveItems);
', _idc, _count];