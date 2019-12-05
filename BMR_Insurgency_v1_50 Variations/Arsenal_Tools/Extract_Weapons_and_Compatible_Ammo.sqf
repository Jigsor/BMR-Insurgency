//ExtractweaponsandCompatibleAmmo.sqf

if (isNil "addingweaps") then {addingweaps = [];};
private _currweap = currentweapon player;
addingweaps pushBackUnique _currweap;

if (isNil "compatibleMagsVar") then {addingmags = [];};
private _compatiblemags = getArray (configFile >> "CfgWeapons" >> (currentweapon player) >> "magazines");
{
	addingmags pushBackUnique _x;
} forEach _compatiblemags;