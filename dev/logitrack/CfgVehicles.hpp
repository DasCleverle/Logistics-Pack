#define COLORS(G, Y, R) \
class values { \
    class Green { name = CSTRING(LCOLOR_GREEN); value = COLOR_GREEN; default = G; }; \
    class Yellow { name = CSTRING(LCOLOR_YELLOW); value = COLOR_YELLOW; default = Y; }; \
    class Red { name = CSTRING(LCOLOR_RED); value = COLOR_RED; default = R; }; \
}

#define STATUS(STATUS, G, Y, R) \
class Status##STATUS##Tooltip { \
    displayName = Status STATUS Tooltip; \
    defaultValue = CSTRING(DOUBLES(TOOLTIP,STATUS)); \
}; \
class Status##STATUS##Color { \
    displayName = CSTRING(DOUBLES(COLOR,STATUS)); \
\
    COLORS(G, Y, R); \
}

class CfgVehicles {
    class Logic;
    class Module_F: Logic {
        class ArgumentsBaseUnits {
          class Units;
        };
    };

    class GVAR(module) : Module_F {
        scope = 2;
        displayName = "LogiTrack";
        icon = QDATAPATH(icon_module.paa);
        category = QEGVAR(dlp_main,modules);
        function = FUNC(initModule);
        isGlobal = 2;
        author = MAINAUTHOR;

        class Arguments {
            STATUS(1, 1, 0, 0);
            STATUS(2, 1, 0, 0);
            STATUS(3, 0, 1, 0);
            STATUS(4, 0, 1, 0);
            STATUS(5, 0, 1, 0);
            STATUS(6, 0, 0, 1);
            STATUS(7, 0, 1, 0);
            STATUS(8, 0, 1, 0);
        };
    };
};
