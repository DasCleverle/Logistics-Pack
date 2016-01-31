class CfgVehicles {
    class Logic;
    class Module_F: Logic {
        class ArgumentsBaseUnits {
            class Units;
        };
    };

    class GVAR(module) : Module_F {
        scope = 2;
        displayName = "Item Exchange";
        icon = QDATAPATH(icon_module.paa);
        category = EGVAR(dlp_main,modules);
        function = FUNC(initModule);
        isGlobal = 2;
        author = AUTHOR;
    };
};