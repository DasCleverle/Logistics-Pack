#include "script_component.hpp"

GVAR(currentModalIDC) = IDC_GRP_MODAL;
GVAR(modals) = [];
GVAR(selectedBoxes) = [];
GVAR(dots) = [];

{
    [_x] call CBA_fnc_removePerFrameHandler;
} foreach GVAR(perFrameHandlers)