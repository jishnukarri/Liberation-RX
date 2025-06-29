[] spawn {
    private _allItems = [];

    {
        private _classname = configName _x;
        private _scope = getNumber (_x >> "scope");
        private _sim = getText (_x >> "simulation");
        if (_scope > 0 && (_sim in ["Weapon", "WeaponLauncher", "WeaponMGun", "WeaponShotgun"])) then {
            private _displayName = getText (_x >> "displayName");
            _allItems pushBack format ["\"%1\", /* %2 */", _classname, _displayName];
        };
    } forEach ("true" configClasses (configFile >> "CfgWeapons"));

    _allItems sort true;
    copyToClipboard (_allItems joinString toString [13,10]);

    diag_log "===== Arsenal Items Start =====";
    { diag_log _x } forEach _allItems;
    diag_log "===== Arsenal Items End =====";

    systemChat format ["%1 items copied and logged", count _allItems];
};
