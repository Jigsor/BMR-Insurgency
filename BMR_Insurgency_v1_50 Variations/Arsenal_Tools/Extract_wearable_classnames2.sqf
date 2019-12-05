//Extract_wearable_classnames2.sqf by Jigsor

//watch variables
BMR_backpacks = [];
BMR_uniforms = [];
BMR_headgear = [];
BMR_vests = [];

//Blufor
_availableBackpacks = [
// Vanilla Backpacks
	"B_Parachute",       //Not required for HALO or Bail
	"B_AssaultPack_mcamo",
	"B_AssaultPack_Kerry",
	"B_AssaultPack_tna_F",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_oli",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_cbr",
	"B_Static_Designator_01_weapon_F",
	"B_UAV_01_backpack_F",
	"B_GMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"B_HMG_01_high_weapon_F",
	"B_HMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"B_GMG_01_weapon_F",
	"B_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"B_HMG_01_support_high_F",
	"B_HMG_01_support_F",
	"B_Static_Designator_01_weapon_F",
	"B_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"B_UAV_06_medical_backpack_F",
	"B_UAV_01_backpack_F",
	"C_UAV_06_medical_backpack_F"
];

_availableItems = [
// Vanilla items
	"ItemMap",               //Required for many Map Click mission functions.
	"G_Tactical_Clear",      //Required for Helmet Cam HUD
	"FirstAidKit",           //Required for BTC Revives
	"B_UavTerminal",         //Required to Access UAVs/UGVs
	"MineDetector",
	"ToolKit",
	"Medikit",
	"ItemRadio",
	"ItemCompass",
	"ItemGPS",
	"ItemWatch",

	//Optics
	"NVGoggles",
	"NVGoggles_tna_F",
	"NVGogglesB_blk_F",
	"NVGogglesB_grn_F",
	"NVGogglesB_gry_F",
	"G_Diving",
	"G_B_Diving",
	"G_Lowprofile",
	"O_NVGoggles_hex_F",
	"O_NVGoggles_urb_F",
	"O_NVGoggles_ghex_F",
	"G_Goggles_VR",
	"G_Lady_Blue",
	"G_Aviator",
	"G_Tactical_Black",

	//Weapon Accessories
	"acc_flashlight",
	"acc_pointer_IR",
	"bipod_01_F_blk",
	"bipod_03_F_blk",
	"bipod_01_F_blk",
	"bipod_01_F_mtp",
	"bipod_01_F_snd",
	"bipod_01_F_khk",
	"bipod_02_F_blk",
	"bipod_02_F_hex",
	"bipod_02_F_tan",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_58_ghex_F",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F",
	"muzzle_snds_65_TI_ghex_F",
	"muzzle_snds_acp",
	"muzzle_snds_L",
	"muzzle_snds_H",
	"muzzle_snds_B",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_338_sand",
	"muzzle_snds_H_khk_F",
	"optic_Yorris",
	"optic_MRD",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_Aco_smg",
	"optic_ACO_grn_smg",
	"optic_ARCO",
	"optic_Arco_blk_F",
	"optic_ERCO_blk_F",
	"optic_MRCO",
	"optic_Holosight",
	"optic_Holosight_blk_F",
	"optic_Holosight_smg",
	"optic_Holosight_smg_blk_F",
	"optic_KHS_old",
	"optic_SOS",
	"optic_NVS",
	"optic_tws",
	"optic_tws_mg",
	"optic_DMS",
	"optic_LRPS",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",

	//Uniforms
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_tshirt",
	"U_B_CombatUniform_mcam_worn",
	"U_B_CombatUniform_mcam_vest",
	"U_B_FullGhillie_lsh",
	"U_B_FullGhillie_sard",
	"U_B_FullGhillie_ard",
	"U_B_survival_uniform",
	"U_B_CombatUniform_wdl",
	"U_B_CombatUniform_wdl_tshirt",
	"U_B_CombatUniform_wdl_vest",
	"U_B_CombatUniform_sgg",
	"U_B_CombatUniform_sgg_tshirt",
	"U_B_CombatUniform_sgg_vest",
	"U_B_SpecopsUniform_sgg",
	"U_B_PilotCoveralls",
	"U_B_CTRG_1",
	"U_B_CTRG_2",
	"U_B_CTRG_3",
	"U_B_CTRG_Soldier_F",
	"U_B_CTRG_Soldier_2_F",
	"U_B_CTRG_Soldier_3_F",
	"U_B_CTRG_Soldier_urb_1_F",
	"U_B_T_Soldier_SL_F",
	"U_B_Wetsuit",

	//Vests
	"V_BandollierB_khk",
	"V_BandollierB_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier3_rgr",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrierL_CTRG",
	"V_PlateCarrierH_CTRG",

	//Helmets
	"H_HelmetB_TI_tna_F",    //Is Gas mask
	"H_CrewHelmetHeli_B",    //Is Gas mask
	"H_PilotHelmetFighter_B",//Is Gas mask
	"H_HelmetB",
	"H_HelmetB_camo",
	"H_HelmetB_paint",
	"H_HelmetB_light",
	"H_HelmetB_grass",
	"H_HelmetB_snakeskin",
	"H_HelmetB_sand",
	"H_HelmetB_desert",
	"H_HelmetB_light_desert",
	"H_HelmetSpecB",
	"H_HelmetSpecB_sand",
	"H_HelmetSpecB_snakeskin",
	"H_Cap_tan_specops_US",
	"H_MilCap_mcamo",
	"H_HelmetB_light_black",
	"H_HelmetB_light_grass",
	"H_HelmetB_light_sand",
	"H_HelmetB_light_snakeskin",
	"H_HelmetB_black",
	"H_HelmetSpecB_blk",
	"H_HelmetSpecB_paint2",
	"H_HelmetSpecB_paint1",
	"H_HelmetCrew_B",
	"H_PilotHelmetHeli_B",
	"H_HelmetB_tna_F",
	"H_HelmetB_Enh_tna_F",
	"H_HelmetB_Light_tna_F",
	"H_PilotHelmetHeli_B",
	"H_Booniehat_tna_F",
	"H_Booniehat_khk_hs",
	"H_Booniehat_khk",
	"H_Booniehat_mcamo",
	"H_Booniehat_tan",
	"H_Booniehat_oli",
	"H_Beret_02",
	"H_Beret_Colonel",
	"H_Bandanna_mcamo",
	"H_Cap_tan_specops_US",
	"H_Cap_usblack",
	"H_Cap_khaki_specops_UK",

	//HeadGear
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_Balaclava_TI_tna_F",
	"G_Balaclava_TI_G_tna_F",
	"G_Bandanna_beast",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_tan",
	"G_Combat",
	"G_Combat_Goggles_tna_F",
	"H_WirelessEarpiece_F",

	//Vests
	"V_Rangemaster_belt",
	"V_BandollierB_blk",
	"V_BandollierB_rgr",
	"V_Chestrig_blk",
	"V_Chestrig_rgr",
	"V_TacVest_blk",
	"V_TacVestIR_blk",
	"V_PlateCarrier1_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier2_blk",
	"V_PlateCarrierGL_blk",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierGL_mtp",
	"V_PlateCarrierSpec_blk",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrierSpec_mtp",
	"V_RebreatherB",
	"V_TacChestrig_grn_F",
	"V_PlateCarrier1_tna_F",
	"V_PlateCarrier2_tna_F",
	"V_PlateCarrierSpec_tna_F",
	"V_PlateCarrierGL_tna_F",
	"V_PlateCarrier1_rgr_noflag_F",
	"V_PlateCarrier2_rgr_noflag_F",
	"V_Rangemaster_belt"
];

_availableMagazines = [
// Vanilla Magazines
	//Misc
	"Laserbatteries",

	//Throw
	"SmokeShellYellow",               //Poison Gas Grenade
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShell",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"MiniGrenade",
	"HandGrenade",
	"B_IR_Grenade",

	//Put
	"SatchelCharge_Remote_Mag",       //Can Destroy Ammo Caches and Towers
	"DemoCharge_Remote_Mag",          //Can Destroy Ammo Caches and Towers
	"APERSBoundingMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSTripMine_Wire_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",

	//Ammo
	"UGL_FlareGreen_F",
	"UGL_FlareWhite_F",               //Required for Hunt IR
	"1Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"3Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"1Rnd_SmokeYellow_Grenade_shell", //Poison Gas Grenade
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_HE_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"UGL_FlareYellow_F",
	"UGL_FlareRed_F",
	"UGL_FlareGreen_F",
	"30Rnd_9x21_Mag",
	"16Rnd_9x21_Mag",
	"16Rnd_9x21_green_Mag",
	"30Rnd_9x21_Green_Mag",
	"30Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag",
	"20Rnd_762x51_Mag",
	"7Rnd_408_Mag",
	"10Rnd_338_Mag",
	"130Rnd_338_Mag",
	"20Rnd_556x45_UW_mag",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_red",
	"150Rnd_556x45_Drum_Mag_F",
	"30Rnd_45ACP_Mag_SMG_01",
	"200Rnd_556x45_Box_F",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_Tracer_F",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"11Rnd_45ACP_Mag",
	"10Rnd_127x54_Mag",

	//Launcher ammo
	"RPG32_HE_F",
	"RPG32_F",
	"NLAW_F",
	"Titan_AA",
	"Titan_AT",
	"Titan_AP"
];

_availableWeapons = [
// Vanilla Weapons
	//Misc
	"Binocular",
	"Rangefinder",
	"Laserdesignator",
	"Laserdesignator_03",
	"Laserdesignator_01_khk_F",

	//Rifles
	"arifle_SDAR_F",
	"srifle_EBR_F",
	"srifle_DMR_02_F",
	"srifle_DMR_03_F",
	"srifle_DMR_06_camo_khs_F",
	"srifle_DMR_04_F",
	"srifle_DMR_04_Tan_F",
	"srifle_LRR_F",
	"srifle_LRR_tna_F",
	"arifle_MX_GL_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_GL_khk_F",
	"arifle_MX_Black_F",
	"arifle_MX_khk_F",
	"arifle_MX_F",
	"arifle_MX_SW_Black_F",
	"arifle_MX_SW_khk_F",
	"arifle_MX_SW_F",
	"arifle_MXM_F",
	"arifle_MXC_Black_F",
	"arifle_MXC_khk_F",
	"arifle_MXC_F",
	"arifle_MXM_Black_F",
	"arifle_MXM_khk_F",
	"arifle_MXM_DMS_LP_BI_snds_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_khk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_03_blk_F",

	//MachineGuns
	"arifle_SPAR_02_blk_F",
	"arifle_SPAR_02_khk_F",
	"arifle_SPAR_02_snd_F",
	"LMG_03_F",//LIM-85
	"MMG_02_camo_F",
	"MMG_02_black_F",
	"MMG_02_sand_F",
	"SMG_01_F",
	"MMG_01_tan_F",
	"SMG_05_F",

	//Launchers
	"launch_RPG32_F",//opfor
	"launch_NLAW_F",
	"launch_B_Titan_F",
	"launch_B_Titan_short_F",

	//SideArms
	"hgun_P07_khk_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_ACPC2_F",
	"hgun_Pistol_Signal_F",
	"hgun_P07_F"
];



//Opfor
_availableBackpacks2 = [
// Vanilla Backpacks
	"B_Parachute",
	"B_AssaultPack_dgtl",
	"B_FieldPack_ocamo",
	"B_FieldPack_ghex_F",
	"B_FieldPack_oli",
	"B_FieldPack_cbr",
	"B_FieldPack_ghex_OTMedic_F",
	"B_FieldPack_cbr_LAT",
	"B_FieldPack_blk",
	"B_TacticalPack_ocamo"
];

_availableItems2 = [
// Vanilla items
	"G_Tactical_Clear",            //<-Required for Helmet Cam HUD
	"FirstAidKit",                 //Required for BTC Revives
	"Medikit",                     //Opfor Players are Medics by Class
	"ToolKit",                     //Opfor Players are Engineers by Trait
	"H_HelmetO_ViperSP_ghex_F",  //Is Gas Mask
	"H_CrewHelmetHeli_O",        //Is Gas Mask
	"H_CrewHelmetHeli_I",        //Is Gas Mask
	"MineDetector",
	"ItemCompass",
	"ItemGPS",
	"ItemMap",
	"ItemWatch",
	"ItemRadio",

	//Optics
	"NVGoggles",
	"NVGoggles_OPFOR",
	"NVGoggles_INDEP",
	"NVGoggles_tna_F",
	"O_NVGoggles_hex_F",
	"O_NVGoggles_urb_F",
	"O_NVGoggles_ghex_F",
	"G_Goggles_VR",
	"G_O_Diving",
	"G_I_Diving",
	"G_Lady_Blue",
	"G_Tactical_Black",

	//Uniforms
	"U_I_OfficerUniform",
	"U_O_officer_noInsignia_hex_F",
	"U_O_PilotCoveralls",
	"U_I_CombatUniform",
	"U_I_CombatUniform_tshirt",
	"U_I_CombatUniform_shortsleeve",
	"U_I_Wetsuit",
	"U_IG_leader",
	"U_IG_Guerilla1_1",
	"U_IG_Guerilla2_1",
	"U_IG_Guerilla2_2",
	"U_IG_Guerilla2_3",
	"U_IG_Guerilla3_1",
	"U_IG_Guerilla3_2",
	"U_IG_Guerrilla_6_1",
	"U_BG_leader",
	"U_BG_Guerilla1_1",
	"U_BG_Guerilla1_2_F",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_2",
	"U_BG_Guerilla2_3",
	"U_BG_Guerilla3_1",
	"U_BG_Guerilla3_2",
	"U_BG_Guerrilla_6_1",
	"U_OG_leader",
	"U_OG_Guerilla1_",
	"U_OG_Guerilla2_1",
	"U_OG_Guerilla2_2",
	"U_OG_Guerilla2_3",
	"U_OG_Guerilla3_1",
	"U_OG_Guerilla3_2",
	"U_OG_Guerrilla_6_1",
	"U_I_G_resistanceLeader_F",
	"U_O_OfficerUniform_ocamo",
	"U_O_SpecopsUniform_ocamo",
	"U_O_SpecopsUniform_blk",
	"U_O_CombatUniform_ocamo",
	"U_O_CombatUniform_oucamo",
	"U_O_GhillieSuit",
	"U_O_Wetsuit",
	"U_O_T_Soldier_F",
	"U_O_T_Officer_F",
	"U_O_T_Sniper_F",
	"U_I_C_Soldier_Bandit_3_F",
	"U_I_C_Soldier_Para_2_F",
	"U_I_C_Soldier_Para_3_F",
	"U_I_C_Soldier_Para_4_F",
	"U_I_C_Soldier_Para_1_F",
	"U_I_C_Soldier_Camo_F",

	//Helmets
	"H_HelmetIA",
	"H_HelmetIA_net",
	"H_HelmetIA_camo",
	"H_HelmetO_ocamo",
	"H_HelmetO_ghex_F",
	"H_Watchcap_camo",
	"H_HelmetLeaderO_ghex_F",
	"H_HelmetLeaderO_ocamo",
	"H_HelmetLeaderO_oucamo",
	"H_HelmetSpecO_ocamo",
	"H_HelmetSpecO_ghex_F",
	"H_HelmetSpecO_blk",
	"H_HelmetCrew_O",
	"H_HelmetCrew_O_ghex_F",
	"H_HelmetCrew_I",
	"H_Watchcap_cbr",
	"H_Watchcap_camo",
	"H_Watchcap_khk",
	"H_Booniehat_dgtl",
	"H_Cap_blk_Raven",
	"H_Cap_brn_SPECOPS",
	"H_PilotHelmetHeli_O",
	"H_PilotHelmetHeli_I",
	"H_Bandanna_gry",
	"H_Bandanna_blu",
	"H_Bandanna_cbr",
	"H_Bandanna_khk_hs",
	"H_Bandanna_khk",
	"H_Bandanna_sgg",
	"H_Bandanna_sand",

	//HeadGear
	"H_Shemag_khk",
	"H_Shemag_tan",
	"H_Shemag_olive",
	"H_Shemag_olive_hs",
	"H_ShemagOpen_khk",
	"H_ShemagOpen_tan",
	"H_Bandanna_camo",
	"G_Balaclava_combat",
	"G_Balaclava_oli",
	"G_Bandanna_tan",

	//Vests
	"V_BandollierB_cbr",
	"V_TacChestrig_cbr_F",
	"V_TacVest_oli",
	"V_Chestrig_oli",
	"V_Chestrig_khk",
	"V_HarnessO_brn",
	"V_TacVest_khk",
	"V_PlateCarrierIA2_dgtl",
	"V_BandollierB_ghex_F",
	"V_RebreatherIR",
	"V_RebreatherIA",

	//Weapon Accessories
	"muzzle_snds_H",
	"muzzle_snds_L",
	"muzzle_snds_B",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_58_ghex_F",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F",
	"muzzle_snds_65_TI_ghex_F",
	"bipod_02_F_blk",
	"bipod_02_F_hex",
	"bipod_02_F_tan",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Yorris",
	"optic_Holosight",
	"optic_Holosight_blk_F",
	"optic_Holosight_smg",
	"optic_Holosight_smg_blk_F",
	"optic_MRCO",
	"optic_MRD",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_ARCO",
	"optic_Arco_blk_F",
	"optic_ERCO_blk_F"
];

_availableMagazines2 = [
// Vanilla Magazines
	//Misc
	"Laserbatteries",

	//Throw
	"SmokeShellYellow",//is Gas Grenade
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShell",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"MiniGrenade",
	"HandGrenade",
	"O_IR_Grenade",
	"I_IR_Grenade",

	//UGL
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",//is Gas Grenade
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"UGL_FlareYellow_F",
	"UGL_FlareRed_F",
	"UGL_FlareGreen_F",

	//Launcher ammo
	"Titan_AA",
	"Titan_AT",
	"Titan_AP",
	"RPG32_HE_F",
	"RPG32_F",
	"RPG7_F",

	//Rifle/Handgun ammo
	"6Rnd_45ACP_Cylinder",
	"9Rnd_45ACP_Mag",
	"30Rnd_580x42_Mag_F",
	"30Rnd_65x39_caseless_green",
	"16Rnd_9x21_Mag",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"30Rnd_9x21_Mag_SMG_02",
	"10Rnd_762x54_Mag",
	"30Rnd_556x45_Stanag",
	"30Rnd_9x21_Mag",
	"20Rnd_762x51_Mag",
	"30Rnd_762x39_Mag_F",
	"30Rnd_545x39_Mag_F",
	"200Rnd_556x45_Box_F",
	"10Rnd_9x21_Mag",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer",
	//Put
	"APERSBoundingMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSTripMine_Wire_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"DemoCharge_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"SatchelCharge_Remote_Mag"
];

_availableWeapons2 = [
// Vanilla Weapons
	//Misc
	"Binocular",
	"Rangefinder",
	"Laserdesignator",
	"Laserdesignator_02",
	"Laserdesignator_02_ghex_F",

	//Rifles
	"arifle_TRG21_F",
	"arifle_SDAR_F",
	"arifle_Mk20_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_GL_F",
	"arifle_Mk20_ACO_F",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_CTAR_blk_Pointer_F",
	"arifle_CTAR_blk_F",
	"arifle_CTAR_GL_blk_F",
	"arifle_AKM_F",
	"arifle_AKS_F",
	"arifle_AK12_F",
	"arifle_AK12_GL_F",
	"srifle_DMR_01_F",
	"hgun_PDW2000_F",

	//MachineGuns
	"LMG_Zafir_F",
	"LMG_Mk200_F",
	"LMG_Mk200_BI_F",
	"SMG_02_F",
	"SMG_05_F",
	"SMG_01_F",

	//Launchers
	"launch_RPG32_ghex_F",
	"launch_O_Titan_F",
	"launch_I_Titan_F",
	"launch_O_Titan_short_F",
	"launch_I_Titan_short_F",
	"launch_RPG32_F",
	"launch_RPG7_F",

	//SideArms
	"hgun_ACPC2_F",
	"hgun_Rook40_F",
	"hgun_Pistol_heavy_02_F",
	"hgun_Pistol_01_F"
];


_allVanillaContent = [];
_allVanillaContent = _allVanillaContent + _availableBackpacks2;
_allVanillaContent = _allVanillaContent + _availableItems2;
_allVanillaContent = _allVanillaContent + _availableMagazines2;
_allVanillaContent = _allVanillaContent + _availableWeapons2;
_wearables = (configFile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;
_temp = (configFile >> "cfgVehicles") call BIS_fnc_getCfgSubClasses;
_wearables = _wearables + _temp;
_temp = (configFile >> "CfgGlasses") call BIS_fnc_getCfgSubClasses;
_wearables = _wearables + _temp;
_wearables sort true;

//Exclude base classes and vanilla content
{if ((["base", _x] call BIS_fnc_inString) || (_x in _allVanillaContent)) then {_wearables = _wearables - [_x];};} foreach _wearables;

{
	_itemType = _x call BIS_fnc_itemType;
	//systemChat format["classname = %1, _itemType = %2",_x, _itemType select 1];

	// BackPacks
	if (_itemType select 1 isEqualTo "Backpack") then {BMR_backpacks pushBack _x};
	// Uniforms
	if (_itemType select 1 isEqualTo "Uniform") then {BMR_uniforms pushBack _x};
	// Headgear / Masks
	if (_itemType select 1 isEqualTo "Headgear") then {BMR_headgear pushBack _x};
	// Vests
	if (_itemType select 1 isEqualTo "Vest") then {BMR_vests pushBack _x};
} foreach _wearables;

//print to .rpt
diag_log "";
diag_log "BackPacks";
{diag_log format ["%1",_x];} forEach BMR_backpacks;

diag_log "";
diag_log "Uniforms";
{diag_log format ["%1",_x];} forEach BMR_uniforms;

diag_log "";
diag_log "Headgear / Masks";
{diag_log format ["%1",_x];} forEach BMR_headgear;

diag_log "";
diag_log "Vests";
{diag_log format ["%1",_x];} forEach BMR_vests;