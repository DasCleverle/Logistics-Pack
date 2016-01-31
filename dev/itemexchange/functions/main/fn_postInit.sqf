#include "script_component.hpp"

GVAR(deleteQueue) = [];

GVAR(currentModalIDC) = IDC_GRP_MODAL;
GVAR(modals) = [];
GVAR(itemLists) = [];

GVAR(selectedBoxes) = [];

[FUNC(pfhDeleteQueue),0,[]] call CBA_fnc_addPerFrameHandler;
[FUNC(pfhRefreshLists),0,[]] call CBA_fnc_addPerFrameHandler;

["DLP", QGVAR(openMenu), "Open ItemExchange-Menu", FUNC(openMenu), "", [36, [false, true, false]]] call CBA_fnc_addKeybind;