#include "script_component.hpp"

params ["_message"];

(findDisplay IDD_ITEMEXCHANGE) displayCtrl IDC_LBL_MESSAGES ctrlSetText _message;