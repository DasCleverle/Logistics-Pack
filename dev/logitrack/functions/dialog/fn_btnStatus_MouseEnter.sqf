#include "script_component.hpp"

params ["_status"];
private _tooltip = GVAR(tooltips) select (_status - 1);

(findDisplay IDD_LOGITRACKER displayCtrl IDC_LBL_TOOLTIP) ctrlSetText _tooltip;