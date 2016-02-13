#include "script_component.hpp"

GVAR(deleteQueue) = [];

GVAR(currentModalIDC) = IDC_GRP_MODAL;
GVAR(modals) = [];
GVAR(dots) = [];
GVAR(itemLists) = [];

GVAR(selectedBoxes) = [];

["DLP", QGVAR(openMenu), "Open ItemExchange-Menu", FUNC(openMenu), "", [36, [false, true, false]]] call CBA_fnc_addKeybind;