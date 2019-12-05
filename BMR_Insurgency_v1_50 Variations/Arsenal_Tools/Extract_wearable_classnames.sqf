//Extract_wearable_classnames.sqf by Jigsor


//watch variables
BMR_uniforms = [];
BMR_backpacks = [];
BMR_headgear = [];
BMR_vests = [];


_wearablesList = (configFile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;
_temp = (configFile >> "cfgVehicles") call BIS_fnc_getCfgSubClasses;
_wearablesList = _wearablesList + _temp;
_temp = (configFile >> "CfgGlasses") call BIS_fnc_getCfgSubClasses;
_wearablesList = _wearablesList + _temp;
_wearablesList sort true;

{if (["base", _x] call BIS_fnc_inString) then {_wearablesList = _wearablesList - [_x];};} foreach _wearablesList;

{
	_itemType = _x call BIS_fnc_itemType;
	//systemChat format["classname = %1, _itemType = %2",_x, _itemType select 1];
	// Uniforms
	if (_itemType select 1 isEqualTo "Uniform") then {BMR_uniforms pushBack _x};
	// BackPacks
	if (_itemType select 1 isEqualTo "Backpack") then {BMR_backpacks pushBack _x};
	// Headgear / Masks
	if (_itemType select 1 isEqualTo "Headgear") then {BMR_headgear pushBack _x};
	// Vests
	if (_itemType select 1 isEqualTo "Vest") then {BMR_vests pushBack _x};
} foreach _wearablesList;
