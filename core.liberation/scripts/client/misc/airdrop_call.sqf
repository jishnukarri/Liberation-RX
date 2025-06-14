params [ "_unit", "_class", "_forced_pos" ];

private _text = "";
private _vehicle = objNull;
private _pos = ([] call F_getFreePos);

if (isNil "_forced_pos") then {
	_text = format ["Player %1 Air Drop Support.", name _unit];
	_vehicle = createVehicle [_class, _pos, [], 0, "NONE"];
	_vehicle addMPEventHandler ["MPKilled", { _this spawn kill_manager }];
	_vehicle setVariable ["GRLIB_vehicle_owner", (getPlayerUID _unit), true];
	_pos = getPosATL _unit;
} else {
	_text = format ["Player %1 Air Drop Vehicle.", name _unit];
	_vehicle = _class;
	_pos = _forced_pos;
};

[gamelogic, _text] remoteExec ["globalChat", 0];

_pos set [2, 500];	// launch altitude
if (surfaceIsWater _pos) then { _pos = ATLtoASL _pos };
while { _vehicle distance _pos > 100 } do {
	_vehicle setPos _pos;
	sleep 1;
};
[_vehicle] spawn F_addParachute;

diag_log format [ "Done Airdrop vehicle %1 on %2 at %3", (typeOf _vehicle), _pos, time ];
