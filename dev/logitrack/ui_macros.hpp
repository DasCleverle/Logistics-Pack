#define IDD_LOGITRACKER 21200

#define IDC_LST_STATUS 21201
#define IDC_LBL_TOOLTIP 21202


// Positioning
#define DIALOG_X (safeZoneX + (safeZoneW - DIALOG_WIDTH) / 2)
#define DIALOG_Y (0)
#define DIALOG_WIDTH (2.25 * GUIMIN_3_2(1.2,2))
#define DIALOG_HEIGHT (4/3 * DIALOG_WIDTH)

#define DIALOG_POS x = DIALOG_X; y = DIALOG_Y
#define DIALOG_DIM w = DIALOG_WIDTH; h = DIALOG_HEIGHT
#define DIALOG_POS_DIM DIALOG_POS; DIALOG_DIM

#define GRP_X (DIALOG_X + 3.3 * GUIMIN_3_2(1.2, 25))
#define GRP_Y (DIALOG_Y + 5.3 * GUIMIN_3_2(1.2, 25))
#define GRP_WIDTH (18.5 * GUIMIN_3_2(1.2, 25))
#define GRP_HEIGHT (14.5 * GUIMIN_3_2(1.2, 25))

#define GRP_POS x = GRP_X; y = GRP_Y
#define GRP_DIM w = GRP_WIDTH; h = GRP_HEIGHT
#define GRP_POS_DIM GRP_POS; GRP_DIM

#define COLUMNS 7
#define ROWS 18

#define CELL_MARGIN (0.1 * GUIMIN_3_2(1.2, 25))
#define CELL_WIDTH (GRP_WIDTH / COLUMNS)
#define CELL_HEIGHT (GRP_HEIGHT / ROWS)

#define CELL_FONTSIZE (0.75 * CELL_HEIGHT)

#define GUIMIN_1(var1)                  GUIMIN_2(var1, var1)
#define GUIMIN_2(var1, var2)            (((safezoneW / safezoneH) min var1) / var2)
#define GUIMIN_3(var1, var2, var3)      (GUIMIN_2(var1, var2) / var3)
#define GUIMIN_3_2(var1, var2)          GUIMIN_3(var1, var1, var2)


#define CELL(X, Y) \
    x = (X) * (CELL_WIDTH + CELL_MARGIN); \
    y = (Y) * (CELL_HEIGHT + 4/3 * CELL_MARGIN)

#define CELLSPAN(W, H) \
    w = (W) * CELL_WIDTH + ((W) - 1) * CELL_MARGIN; \
    h = (H) * CELL_HEIGHT + ((H) - 1) * 4/3 * CELL_MARGIN

#define STYLE \
    sizeEx = CELL_FONTSIZE; \
    font = "EtelkaMonospacePro"

#define STATUSBUTTON(STATUS) \
    class btnStatus##STATUS : GVAR(Button) { \
        idc = BTN_STATUS_##STATUS; \
        text = STATUS; \
        CELL((STATUS - 1) * 0.5, 2); \
        CELLSPAN(0.5,1); \
        \
        onMouseEnter = [STATUS] call FUNC(btnStatus_MouseEnter); \
        onMouseExit = call FUNC(btnStatus_MouseExit); \
        onButtonClick = [STATUS] call FUNC(setStatus); \
    }