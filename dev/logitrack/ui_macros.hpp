#define IDD_LOGITRACKER 21200

#define IDC_LST_STATUS 21201
#define IDC_LBL_TOOLTIP 21202

// Positioning
#define DIALOG_X (safeZoneX + (safeZoneW - DIALOG_WIDTH) / 2)
#define DIALOG_Y (0)
#define DIALOG_WIDTH (2.25 * GUIMIN_3_2(1.2,2))
#define DIALOG_HEIGHT (4/3 * DIALOG_WIDTH)

#define GRP_X (DIALOG_X + 3.3 * GUIMIN_3_2(1.2, 25))
#define GRP_Y (DIALOG_Y + 5.3 * GUIMIN_3_2(1.2, 25))
#define GRP_WIDTH (18.5 * GUIMIN_3_2(1.2, 25))
#define GRP_HEIGHT (14.5 * GUIMIN_3_2(1.2, 25))

#define COLUMNS 7
#define ROWS 18

#define CELL_MARGIN (0.1 * GUIMIN_3_2(1.2, 25))
#define CELL_WIDTH (GRP_WIDTH / COLUMNS)
#define CELL_HEIGHT (GRP_HEIGHT / ROWS)

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