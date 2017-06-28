#define GUIMIN_1(var1)                  GUIMIN_2(var1,var1)
#define GUIMIN_2(var1,var2)            (((safezoneW / safezoneH) min var1) / var2)
#define GUIMIN_3(var1,var2, var3)      (GUIMIN_2(var1,var2) / var3)
#define GUIMIN_3_2(var1,var2)          GUIMIN_3(var1,var1,var2)

#define CELL_FONTSIZE (0.75 * CELL_HEIGHT)

#define DIALOG_POS x = DIALOG_X; y = DIALOG_Y
#define DIALOG_DIM w = DIALOG_WIDTH; h = DIALOG_HEIGHT
#define DIALOG_POS_DIM DIALOG_POS; DIALOG_DIM

#define GRP_POS x = GRP_X; y = GRP_Y
#define GRP_DIM w = GRP_WIDTH; h = GRP_HEIGHT
#define GRP_POS_DIM GRP_POS; GRP_DIM

#define CELL(X,Y) \
    x = (X) * (CELL_WIDTH + CELL_MARGIN); \
    y = (Y) * (CELL_HEIGHT + 4/3 * CELL_MARGIN)

#define CELLSPAN(width,height) \
    w = (width) * CELL_WIDTH + ((width) - 1) * CELL_MARGIN; \
    h = (heightH) * CELL_HEIGHT + ((height) - 1) * 4/3 * CELL_MARGIN
