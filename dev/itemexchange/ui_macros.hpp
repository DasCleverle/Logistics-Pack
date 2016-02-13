#define IDD_ITEMEXCHANGE    21500

#define IDC_BTN_HEADER      21501
#define IDC_BTN_CLOSE       21502
#define IDC_LST_BOXES       21503
#define IDC_BTN_OPENMODAL   21504
#define IDC_LST_ITEMS       21505
#define IDC_BTN_MOVE1       21506
#define IDC_BTN_MOVE10      21507
#define IDC_BTN_MOVEALL     21508
#define IDC_CHK_SELECT      21510
#define IDC_BTN_SELECT      21511
#define IDC_PRG_LOAD        21512
#define IDC_LBL_MESSAGES    21514

#define IDC_GRP_MAIN        21509
#define IDC_GRP_MESSAGES    21513
#define IDC_GRP_MODAL       21540

// Positioning
#define DIALOG_X (safeZoneX + 1.5 * GUIMIN_3_2(1.2, 25))
#define DIALOG_Y (safeZoneY + 4/3 * 1.5 * GUIMIN_3_2(1.2, 25))
#define DIALOG_WIDTH (0.75 * GUIMIN_3_2(1.2, 2))
#define DIALOG_HEIGHT (1.35 * GUIMIN_3_2(1.2, 2))

#define GRP_X (0)
#define GRP_Y (0)
#define GRP_WIDTH DIALOG_WIDTH
#define GRP_HEIGHT DIALOG_HEIGHT

#define COLUMNS 12
#define ROWS 13

#define CELL_MARGIN (0.1 * GUIMIN_3_2(1.2, 25))
#define CELL_WIDTH (GRP_WIDTH / COLUMNS)
#define CELL_HEIGHT (GRP_HEIGHT / ROWS)

#define CELLSPAN_W(W) ((W) * (CELL_WIDTH - CELL_MARGIN) + ((W) - 1) * CELL_MARGIN)
#define CELLSPAN_H(H) ((H) * (CELL_HEIGHT - 4/3 * CELL_MARGIN) + ((H) - 1) * 4/3 * CELL_MARGIN)

#define CELL(X, Y) \
    x = (X) * (CELL_WIDTH); \
    y = (Y) * (CELL_HEIGHT)

#define CELLSPAN(W, H) \
    w = CELLSPAN_W(W); \
    h = CELLSPAN_H(H)