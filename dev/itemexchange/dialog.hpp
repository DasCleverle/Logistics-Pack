class IGUIBack;
class RscButton;
class RscControlsGroupNoScrollbars;
class RscListbox;

class GVAR(Background) : IGUIBack {
    idc = -1;
    CELL(0,0);
    w = DIALOG_WIDTH - CELL_MARGIN;
    h = DIALOG_HEIGHT - 4/3 * CELL_MARGIN;

    colorBackground[] = {COLOR_GREY_BRIGHT};
};

class GVAR(grpHeader) : RscControlsGroupNoScrollbars {
    idc = -1;
    x = 0;
    y = 0;
    CELLSPAN(12,1);

    class controls {
        class btnHeader : RscButton {
            idc = IDC_BTN_HEADER;
            CELL(0,0);
            CELLSPAN(11,1);

            colorBackground[] = {COLOR_PROFILE};
            colorBackgroundActive[] = {COLOR_PROFILE};
            colorFocused[] = {COLOR_PROFILE};
            soundEnter[] = {"",0,0};
            soundPush[] = {"",0,0};
            soundClick[] = {"",0,0};
            soundEscape[] = {"",0,0};
        };

        class btnClose : RscButton {
            idc = IDC_BTN_CLOSE;
            CELL(11,0);
            CELLSPAN(1,1);

            text = "X";
            sizeEx = CELL_FONTSIZE;

            colorBackground[] = {COLOR_RED};
            colorBackgroundActive[] = {COLOR_RED_DARK};
            colorFocused[] = {COLOR_RED};
        };
    };
};

class GVAR(grpMain) : RscControlsGroupNoScrollbars {
    idc = IDC_GRP_MAIN;

    DIALOG_POS_DIM;

    class controls {
        class background : GVAR(background) {};

        class grpHeader : GVAR(grpHeader) {};

        class lstBoxes : RscListbox {
            idc = IDC_LST_BOXES;

            onLBDblClick = _this call FUNC(openModal);

            CELL(0.5,1.5);
            CELLSPAN(11,8.5);
        };

        class btnOpenModal : RscButton {
            idc = IDC_BTN_OPENMODAL;
            sizeEx = CELL_FONTSIZE;
            text = "Open Modal";

            onButtonClick = _this call FUNC(openModal);

            CELL(0.5,10.5);
            CELLSPAN(11,1);
        };
    };
};

class GVAR(grpModal) : RscControlsGroupNoScrollbars {
    idc = -1;
    onLoad = _this call FUNC(modal_onLoad);

    GRP_POS_DIM;

    class controls {
        class background : GVAR(background) {};

        class grpHeader : GVAR(grpHeader) {};

        class lstItems : RscListbox {
            idc = IDC_LST_ITEMS;

            CELL(0.5,1.5);
            CELLSPAN(11,8.5);
        };

        class btnMove1 : RscButton {
            idc = -1;
            text = "1";
            sizeEx = CELL_FONTSIZE;

            CELL(5.5,10.5);
            CELLSPAN(2,1);
        };

        class btnMove10 : RscButton {
            idc = -1;
            text = "10";
            sizeEx = CELL_FONTSIZE;

            CELL(7.5,10.5);
            CELLSPAN(2,1);
        };

        class btnMoveAll : RscButton {
            idc = -1;
            text = "All";
            sizeEx = CELL_FONTSIZE;

            CELL(9.5,10.5);
            CELLSPAN(2,1);
        };
    };
};


class GVAR(dialog) {
    idd = IDD_ITEMEXCHANGE;
    onLoad = _this call FUNC(dialog_onLoad);

    class controls {
        class grpMain : GVAR(grpMain) {};
    };
};