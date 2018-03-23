//code by Jigsor.
// Place crates in editor. Give them names. paste names into array _crates.
// runs this code through debug console and all contents of crates' unique class names will print to .rpt and catorgorized by items, backpacks, magazines and weapons wich are all the catagory types in Virtual Arsenal. With this you can then add these classes to the white listed Virtual Arsenal scripts: INSfncs\common\fn_BluforVA.sqf   and   INSfncs\common\fn_InsurgentVA.sqf

private ["_t","_all_c_params","_crates","_crate","_c_params","_items","_BPs","_mags","_weps","_c","_allItems","_allBPs","_allMags","_allWeps"];

_all_c_params = [];
_crates = [INS_weps_Cbox, INS_ammo_Cbox, INS_nade_Cbox, INS_launchers_Cbox, INS_demo_Cbox,INS_sup_Cbox, INS_weps_Cbox_1, INS_ammo_Cbox_1, INS_nade_Cbox_1, INS_launchers_Cbox_1, INS_demo_Cbox_1, INS_sup_Cbox_1, INS_demo_Cbox_2, INS_sup_Cbox_2];

{if ((isNull _x) || (!alive _x)) then {_crates =_crates - [_x];};} forEach _crates;

{
	_crate = _x;
	_items = ItemCargo _crate;
	_BPs = backpackCargo _crate;
	_mags = magazineCargo _crate;
	_weps = WeaponCargo _crate;
	_c_params = [_crate,_items,_BPs,_mags,_weps];
	_all_c_params pushBack _c_params;
} forEach _crates;

_allItems = [];
_allBPs = [];
_allMags = [];
_allWeps = [];

{
	_c = _x;
	if (alive (_c select 0)) then {
		if (count (_c select 1) != 0) then {
			{_allItems pushBackUnique _x;} forEach (_c select 1);
		};
		if (count (_c select 2) != 0) then {
			{_allBPs pushBackUnique _x;} forEach (_c select 2);
		};
		{_allMags pushBackUnique _x;} forEach (_c select 3);

		{_allWeps pushBackUnique _x;} forEach (_c select 4);

	};
} forEach _all_c_params;

diag_log "";
diag_log "All Items";
{diag_log format ["%1",_x];} forEach _allItems;

diag_log "";
diag_log "All BackPacks";
{diag_log format ["%1",_x];} forEach _allBPs;

diag_log "";
diag_log "All Mags";
{diag_log format ["%1",_x];} forEach _allMags;

diag_log "";
diag_log "All Weapons";
{diag_log format ["%1",_x];} forEach _allWeps;