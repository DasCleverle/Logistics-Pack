#include "\x\cba\addons\main\script_macros_common.hpp"
#include "\x\cba\addons\xeh\script_xeh.hpp"

#include "ui_macros.hpp"

#define DATAPATH(FILE) PATHTOF(data\FILE)
#define QDATAPATH(FILE) QUOTE(DATAPATH(FILE))
#define FUNCFILE(CLASS) PATHTOF(functions\CLASS)

#define QEGVAR(var1,var2) QUOTE(EGVAR(var1,var2))

#define COLOR_TR         0,0,0,0
#define COLOR_BLACK      0,0,0,1
#define COLOR_BLACK_TR50 0,0,0,0.5
#define COLOR_WHITE      1,1,1,1
#define COLOR_GREEN      0.2,0.5,0.1,1
#define COLOR_YELLOW     1,1,0.3,1
#define COLOR_RED        0.75,0.1,0.1,1
#define COLOR_RED_DARK   0.5,0.1,0.1,1
#define COLOR_PROFILE    "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.9])"