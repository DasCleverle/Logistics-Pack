class CfgFunctions {
    class ADDON {
        class dialog {
            file = FUNCFILE(dialog);

            class dialog_onLoad {};

            class modal_onLoad {};
            class closeModal {};
            class openModal {};

            class btnHeader_MouseDown {};
            class btnHeader_MouseUp {};
            class btnHeader_MouseMoving {};
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

            class pfhDeleteQueue {};
        };
    };
};