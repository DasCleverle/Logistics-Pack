#include "script_component.hpp"

if(count GVAR(itemLists) == 0) exitWith {};

{
    _x params ["_lstItems", "_box"];
    if(isNull _lstItems) exitWith { GVAR(itemLists) deleteAt _foreachIndex; };

    lbClear _lstItems;
    private _items = [_box] call FUNC(getAllItems);
    {
        private _itemName = [_x] call FUNC(getItemName);
        private _count = (_items select 1) select _foreachIndex;

        _lstItems lbAdd format ["%1x %2", _count, _itemName];
    } foreach (_items select 0);

} foreach GVAR(itemLists);