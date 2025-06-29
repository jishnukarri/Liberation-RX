diag_log "--- Liberation RX by pSiKO ---";
if ((isServer || isDedicated) && !isNil "GRLIB_init_server") exitWith { diag_log "--- LRX Error: Mission restart too fast!" };

disableUserInput true;
titleText ["","BLACK FADED", 100];
0 fadeSound 0;
sleep 5;
if (!isServer && isMultiplayer && count (entities "HeadlessClient_F") > 0) then {
	titleText ["Waiting for Headless client....","BLACK FADED", 100];
	sleep 10;
};

diag_log "--- Init start ---";
titleText ["-- Liberation RX --","BLACK FADED", 100];

[] call compileFinal preprocessFileLineNumbers "build_info.sqf";
diag_log format ["LRX version %1 - build version: %2 build date: %3", localize "STR_MISSION_VERSION", GRLIB_build_version, GRLIB_build_date]; 

profileNamespace setVariable ["BIS_SupportDevelopment", nil];
enableSaving [false, false];
disableMapIndicators [false,true,false,false];
setGroupIconsVisible [false,false];

abort_loading = false;
abort_loading_msg = "Unkwon Error";
GRLIB_ACE_enabled = false;
//GRLIB_LRX_debug = true;

private _path = "\UserConfig\whitelist.sqf";
if (fileExists _path) then {
	[] call compileFinal preprocessFile _path;
} else {
	[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";
};

[] call compileFinal preprocessFileLineNumbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\classnames.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\server\sector\init_sectors.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\server\a3w\missions\setupMissionArrays.sqf";
sleep 2;

if (!isDedicated && hasInterface) then {
	[] spawn compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
	["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
};

if (!abort_loading) then {
	[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";
	[] spawn compileFinal preprocessFileLineNumbers "addons\VAM\RPT_init.sqf";

	if (GRLIB_ACE_enabled) then {
		[] spawn compileFinal preprocessFileLineNumbers "scripts\shared\init_ace.sqf";
	} else {
		[] spawn compileFinal preprocessFileLineNumbers "R3F_LOG\init.sqf";
	};

	if (isServer) then {
		[] spawn compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
		[] spawn compileFinal preprocessFileLineNumbers "SA_AdvancedTowing\functions\fn_advancedTowingInit.sqf";
		["Initialize", [true]] call BIS_fnc_dynamicGroups
	};

	if (!isDedicated && !hasInterface && isMultiplayer) then {
		[] spawn compileFinal preprocessFileLineNumbers "scripts\server\offloading\hc_manager.sqf";
	};
} else {
	if (isServer) then {
		GRLIB_init_server = false;
		publicVariable "GRLIB_init_server";
		publicVariable "abort_loading";
		publicVariable "abort_loading_msg";
		diag_log "--- LRX Startup Error ---";
		diag_log abort_loading_msg;
	};
};

diag_log "--- Init stop ---";

diag_log "--- MILSIM UNITED CUSTOM start---";

//Full Heal
["B_Slingload_01_Medevac_F", "InitPost", {
	params ["_vehicle"];
	clearItemCargoGlobal _vehicle;
	_vehicle addAction	[localize "STR_MSU_Medic_Container_Fullheal",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller,true] execVM "MilSimUnited\heal.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
	_vehicle addAction	[localize "STR_MSU_Medic_Container_FullhealArea",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller] execVM "MilSimUnited\heal_aoe.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
//Ace & KAT Crates
["kat_miscSupplyCrate", "InitPost", {
    params ["_vehicle"];
	[_vehicle,1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["kat_surgerySupplyCrate", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["kat_basicSupplyCrate", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["kat_pharmaSupplyCrate", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["ace_medicalSupplyCrate", "InitPost", {
    params ["_vehicle"];
	[_vehicle,1] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["ace_medicalSupplyCrate_advanced", "InitPost", {
    params ["_vehicle"];
	[_vehicle,2] call ace_cargo_fnc_setSize;
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
//Medic Vech
["rhsusf_M1078A1P2_WD_fmtv_usarmy", "InitPost", {
    params ["_vehicle"];
    if (!local _vehicle) exitWith {};
    _vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];
}, true, [], true] call CBA_fnc_addClassEventHandler;



//Rules
diag_log "--- MILSIM UNITED CUSTOM stop---";
