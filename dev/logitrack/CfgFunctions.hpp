class CfgFunctions {
    class ADDON {
        class dialog {
            file = FUNCFILE(dialog);
            class btnStatus_MouseEnter {};
            class btnStatus_MouseExit {};
            class dialog_onLoad {};
            class refreshDialog {};
        };

        class keybind {
            file = FUNCFILE(keybind);
            class openLogitracker {};
            class keybindSetStatus {};
        }

        class main {
            file = FUNCFILE(main);
            class init {};
            class initModule {};
            class postInit { postInit = 1; };

            class setStatus {};
            class setStatusRemote {};
        };
    };
};