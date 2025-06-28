private _allItems = [];

// Weapons
{
    private _classname = configName _x;
    private _scope = getNumber (_x >> "scope");
    private _sim = getText (_x >> "simulation");
    if (_scope > 0 && (_sim == "Weapon" || _sim == "WeaponLauncher" || _sim == "WeaponMGun" || _sim == "WeaponShotgun")) then {
        private _displayName = getText (_x >> "displayName");
        _allItems pushBack format ['"%1", //%2', _classname, _displayName];
    };
} forEach ("true" configClasses (configFile >> "CfgWeapons"));

// Magazines
{
    private _classname = configName _x;
    private _scope = getNumber (_x >> "scope");
    if (_scope > 0) then {
        private _displayName = getText (_x >> "displayName");
        _allItems pushBack format ['"%1", //%2', _classname, _displayName];
    };
} forEach ("true" configClasses (configFile >> "CfgMagazines"));

// Attachments (scopes, silencers, bipods)
{
    private _classname = configName _x;
    private _scope = getNumber (_x >> "scope");
    private _itemInfo = _x >> "ItemInfo";
    if (_scope > 0 && isClass _itemInfo) then {
        private _type = getText (_itemInfo >> "type");
        if (_type in ["101", "201", "301"]) then { // 101: muzzle, 201: optics, 301: bipod
            private _displayName = getText (_x >> "displayName");
            _allItems pushBack format ['"%1", //%2', _classname, _displayName];
        };
    };
} forEach ("true" configClasses (configFile >> "CfgWeapons"));

_allItems sort true;
copyToClipboard (_allItems joinString toString [13,10]);
systemChat format ["%1 arsenal items found", count _allItems];