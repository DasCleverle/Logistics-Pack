class CfgFunctions {
    class ADDON {
        class dialog {
            file = FUNCFILE(dialog);

            class dialog_onLoad {};
            class dialog_onUnload {};
            class dialog_moveItems {};

            class modal_onLoad {};
            class closeModal {};
            class openModal {};

            class btnSelect_click {};
            class chkSelect_changed {};

            class btnHeader_MouseDown {};
            class btnHeader_MouseUp {};
            class btnHeader_MouseMoving {};

            class prgLoad_refresh {};
        };

        class keybind {
            file = FUNCFILE(keybind);

            class openMenu {};
        };

        class main {
            file = FUNCFILE(main);

            class init {};
            class initModule {};
            class postInit { postInit = 1; };

            class getRandomColor {};

            class getAllItems {};
            class getItemName {};
            class getItemConfigBase {};
            class getRealItemCount {};
            class getItemMass {};
            class getContainerMass {};
            class moveItems {};

            class pfhDeleteQueue {};
            class pfhRefreshLists {};
            class pfhDrawDots {};
        };
    };
};