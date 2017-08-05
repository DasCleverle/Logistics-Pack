class CfgWeapons {
    class ItemCore;
    class ItemGPS;
    class InventoryItem_Base_F;

    class ITEM_TRACKER : ItemCore {
        _generalMacro = ITEM_TRACKER;
        author = MAINAUTHOR;
        displayName = "Logitracker";
        descriptionShort = CSTRING(ITEMDESC);
        model = "\A3\Structures_F\Items\Electronics\Laptop_F.p3d";
        picture = PATHTOF(data\thumb_tracker.paa);
        scope = 2;

        detectRange = -1;
        simulation = "ItemMineDetector"; // Dat Hack!

        class ItemInfo {
            mass = 10;
        };
    };
};
