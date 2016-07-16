#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main","cl_dlp_main"};
        author = MAINAUTHOR;
        url = "https://www.gruppe-w.de/";
        VERSION_CONFIG;
    };
};

#include "dialog.hpp"
#include "CfgFunctions.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"