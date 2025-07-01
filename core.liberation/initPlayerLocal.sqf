[] call compileFinal preprocessFileLineNumbers "addons\MILSIM\milsimInitLocal.sqf";

player addEventHandler ["GetInMan", {[ _this select 2] execVM "KP\KPFC\kp_fuel_consumption.sqf";}];
