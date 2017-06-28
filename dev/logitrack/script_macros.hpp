#include "ui_macros.hpp"

// Constants
#define MINSTATUS 1
#define MAXSTATUS 8

#define ITEM_TRACKER CL_Logitracker
#define UHAS_TRACKER(VAR1) (QUOTE(ITEM_TRACKER) in items VAR1)
#define HAS_TRACKER UHAS_TRACKER(player)
