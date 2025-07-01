diag_log "--- MILSIM UNITED CUSTOM start---";
diag_log "--- MILSIM UNITED CUSTOM loading sling---";
[] spawn compileFinal preprocessFileLineNumbers "addons\MILSIM\SLING\advancedSlingLoadingInit.sqf";
diag_log "--- MILSIM UNITED CUSTOM loaded sling---";
diag_log "--- MILSIM UNITED CUSTOM loading tow---";
[] spawn compileFinal preprocessFileLineNumbers "addons\MILSIM\TOW\advancedTowingInit.sqf";
diag_log "--- MILSIM UNITED CUSTOM loaded tow---";
diag_log "--- MILSIM UNITED CUSTOM loading dynamic groups---";

if (isServer) then {
	["Initialize", [true]] call BIS_fnc_dynamicGroups;
};

	["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

diag_log "--- MILSIM UNITED CUSTOM loading loaded dynamic groups---";
diag_log "--- MILSIM UNITED CUSTOM loading full heal +  custom cargo---";

//Full Heal
["B_Slingload_01_Medevac_F", "InitPost", {
	params ["_vehicle"];
	clearItemCargoGlobal _vehicle;
	_vehicle addAction	[localize "STR_MSU_Medic_Container_Fullheal",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller,true] execVM "addons\MILSIM\HEAL\heal.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
	_vehicle addAction	[localize "STR_MSU_Medic_Container_FullhealArea",{ params ["_target", "_caller", "_actionId", "_arguments"]; [_caller] execVM "addons\MILSIM\HEAL\heal_aoe.sqf";},nil,1.5,false,true,"","true",5,false,"",""];
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


diag_log "--- MILSIM UNITED CUSTOM loaded full heal +  custom cargo---";

diag_log "--- MILSIM UNITED CUSTOM stop---";
