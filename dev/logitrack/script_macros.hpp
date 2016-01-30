#include "ui_macros.hpp"

// Constants
#define MINSTATUS 1
#define MAXSTATUS 8

#define ITEM_TRACKER CL_Logitracker
#define UHAS_TRACKER(VAR1) (QUOTE(ITEM_TRACKER) in items VAR1)
#define HAS_TRACKER UHAS_TRACKER(player)

#define COLOR_TR        0,0,0,0
#define COLOR_BLACK     0,0,0,1
#define COLOR_WHITE     1,1,1,1
#define COLOR_GREEN     0.2,0.5,0.1,1
#define COLOR_YELLOW    1,1,0.3,1
#define COLOR_RED       0.75,0.1,0.1,1