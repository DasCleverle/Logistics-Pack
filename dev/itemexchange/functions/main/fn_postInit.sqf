#include "script_component.hpp"

/*["DLP", QGVAR(openMenu), "Open ItemExchange-Menu", FUNC(openMenu), "", [36, [false, true, false]]] call CBA_fnc_addKeybind;*/

GVAR(deleteQueue) = [];

GVAR(currentModalIDC) = IDC_GRP_MODAL;
GVAR(modals) = [];

[FUNC(pfhDeleteQueue),0,[]] call CBA_fnc_addPerFrameHandler;