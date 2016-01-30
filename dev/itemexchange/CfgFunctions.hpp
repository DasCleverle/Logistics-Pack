class CfgFunctions {
    class ADDON {
        class dialog {
            file = FUNCFILE(dialog);

            class dialog_onLoad {};
            class openModal {};
        };

        class keybind {
            file = FUNCFILE(keybind);
        };

        class main {
            file = FUNCFILE(main);

            class init {};
            class initModule {};
            class postInit { postInit = 1; };

            class getAllItems {};
            class getItemName {};
        };

        class modals {
            file = FUNCFILE(modals);

            class modal_onLoad {};
        };
    };
};