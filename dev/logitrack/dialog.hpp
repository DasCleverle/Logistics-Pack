class RscText;
class RscButton;
class RscPicture;
class RscControlsGroupNoScrollbars;
class RscListbox;

class GVAR(Label): RscText {
    idc = -1;
    STYLE;
    shadow = 0;
    colorText[] = {COLOR_BLACK};
};

class GVAR(Button): RscButton {
    idc = -1;
    CELLSPAN(1,1);
    STYLE;
    shadow = 0;
};

class GVAR(dialog) {
    idd = IDD_LOGITRACKER;
    onLoad = _this call FUNC(dialog_onLoad);

    class controls {
        class picBackground : RscPicture {
            idc = -1;
            text = QDATAPATH(background_tracker.paa);

            DIALOG_POS_DIM;
        };

        class grpMain : RscControlsGroupNoScrollbars {
            idc = -1;
            GRP_POS_DIM;

            class controls {
                class lblHeadline : GVAR(Label) {
                    CELL(0,0);
                    CELLSPAN(6,2);
                    text = "LOGITRACK";
                    sizeEx = 2 * CELL_FONTSIZE;
                };

                STATUSBUTTON(1);
                STATUSBUTTON(2);
                STATUSBUTTON(3);
                STATUSBUTTON(4);
                STATUSBUTTON(5);
                STATUSBUTTON(6);
                STATUSBUTTON(7);
                STATUSBUTTON(8);

                class lblTooltip : GVAR(Label) {
                    idc = IDC_LBL_TOOLTIP;
                    text = "";
                    CELL(0,3);
                    CELLSPAN(3,1);
                };

                class lstStatus: RscListbox {
                    idc = IDC_LST_STATUS;
                    CELL(0,4);
                    CELLSPAN(5,10);
                    STYLE;

                    colorText[] = {COLOR_BLACK};
                    colorDisabled[] = {COLOR_BLACK};
                    colorScrollbar[] = {COLOR_WHITE};
                    colorSelect[] = {COLOR_BLACK};
                    colorSelect2[] = {COLOR_BLACK};
                    colorSelectBackground[] = {COLOR_TR};
                    colorSelectBackground2[] = {COLOR_TR};
                    colorBackground[] ={0,0,0,0.6};
                    colorPicture[] ={COLOR_TR};
                    colorPictureSelected[] = {COLOR_TR};
                    colorPictudeDisabled[] ={COLOR_TR};
                    soundSelect[] ={"",0,0};
                    colorShadow[] ={COLOR_TR};
                    tooltipColorShade[] ={COLOR_TR};
                    period = 0;
                };
            };
        };
    };
};