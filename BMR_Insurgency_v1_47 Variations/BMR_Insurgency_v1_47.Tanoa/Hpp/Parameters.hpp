class Params
{
	class INS_Dum_Param1//0
	{
	title = ":: Environment ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class INS_p_time//1
    {
	//title = $STR_BMR_start_time;
	title = "		Set the start time:";
	values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
	texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
	default = 12;
	};
	class JIPweather//2
	{
	title = "		Weather";
	values[]={0,25,50,75,1,2,3};
	texts[]={
	"Static Weather 0% Overcast",
	"Static Weather 25% Overcast",
	"Static Weather 50% Overcast",
	"Static Weather 75% Overcast",
	"Static Weather 100% Overcast (Weather Disabled)",
	"Dynamic Real Weather Enabled",
	"Dynamic Random Weather Enabled"};
	default = 0;
	};
	class ambRadioChatter//3
	{
	title = "		Enable Ambient Vehicle Radio Chatter?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 0;
	};
	class ambCombSound//4
	{
	title = "		Enable Ambient Combat Sounds?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 0;
	};
	class Remove_grass_opt//5
	{
	title = "		Grass Option None";
	values[]={0,1};
	texts[]={"Enabled","Disabled"};
	default = 0;
	};
	class INS_environment//6
	{
	title = "		Environment effects (ambient life + sound)";
	values[]={0,1,2};
	texts[]={"Ambient Life On, Ambient Sound On","Ambient Life Off, Ambient Sound On","Ambient Life Off, Ambient Sound Off"};
	default = 1;
	};
	class Brighter_Nights//7
	{
	title = "		Brighter Nights?";
	values[]={0,1};
	texts[]={"Disable","Enable"};
	default = 1;
	};
	class INS_Dum_Param2//8
	{
	title = ":: Revive ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class INS_p_rev//9
	{
	title="		Revive system";
	values[]={0,1,2,3,4,5,6,7};
	texts[]={
	"=BTC= Revive :: Anyone with FAK can revive. Mobile HQ Disabled.",
	"=BTC= Revive :: Anyone with FAK can revive. Mobile HQ Enabled.",
	"=BTC= Revive :: Only medics can revive. Mobile HQ Disabled.",
	"=BTC= Revive :: Only medics can revive. Mobile HQ Enabled.",
	"=BTC= Quick revive :: AI can revive. Mobile HQ Disabled.",
	"=BTC= Quick revive :: AI can revive. Mobile HQ Enabled.",
	"Revive System Disabled. Mobile HQ Disabled.",
	"Revive System Disabled. Mobile HQ Enabled."};
	default = 1;
	};
	class INS_p_rev_time//10
	{
	title="		Revive time";
	values[]={60,120,180,300,600,1800,3600};
	texts[]={"1 minute","2 minutes","3 minutes","5 minutes","10 minutes","30 minutes","60 minutes"};
	default = 300;
	};
	class INS_Dum_Param3//11
	{
	title = ":: Compatibility and Factions ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class INS_op_faction//12
	{
	title = "		Opposing Army/Mod Initialization";
	values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17};
	texts[]={
	"CSAT - Requirements :: None",
	"AAF - Requirements :: None",
	"AAF and FIA - Requirements :: None",
	"CSAT Pacific - Requirements :: Apex Expansion",
	"CSAT Pacific and Syndikat Apex - Requirements :: Apex Expansion",
	"RHS Armed Forces of the Russian Federation - Requirements :: @RHSAFRF",
	"RHS Desert Armed Forces of the Russian Federation - Requirements :: @RHSAFRF",
	"RHS GREF Chenarus Ground Forces and Nationalist Troops - Requirements :: @RHSAFRF;@RHSUSAF;@RHSGREF",
	"RHS Serbian Armed Forces - Requirements :: @RHSAFRF;@RHSUSAF;@RHSGREF;@RHSSAF",
	"Leights Islamic State of Takistan/Sahrani and Afghan Militia - Requirements ::  @RHSAFRF;@RHSUSAF; + (@leights_opfor or @Project_OPFOR)",
	"Syrian Arab Army and Islamic State - Requirements :: (@RHSAFRF;@RHSUSAF;@RHSGREF;@RHSSAF;@ISC)",
	"CUP Takistan Army and Takistan Militia - Requirements :: @CBA_A3;@cup_units;@cup_weapons;@cup_vehicles",
	"Massi CSAT Army and Middle East Insurgents - Requirements :: @CBA_A3;@MiddleEastWarfare;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle",
	"Massi Takistan Army and Takistan Insurgents - Requirements :: @CBA_A3;@MiddleEastWarfare;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle",
	"Massi Africian Rebel Army and Civilian Rebel supporters - Requirements :: @CBA_A3;@AfricanConflict_mas;@NATO_Rus_Weapons_CBA;@NATO_Rus_Vehicle",
	"OPTRE Insurrectionists - Requirements :: @CBA_A3;@OPTRE",
	"IFA3 Desert US Army - Rquirements :: @CBA_A3;@CUP_Terrains_Core;@CUP_Terrains_Maps;@IFA3_AIO_LITE"};
	default = 3;
	};
	class INS_Dum_Param4//13
	{
	title = ":: Opposing Forces Spawn Settings ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class InfPb//14
	{
	title = "		Enemy Infantry Probability";
	values[]={25,50,75,100};
	texts[]={"25 % chance","50 % chance","75 % chance","100 % chance"};
	default = 50;
	};
	class MecArmPb//15
	{
	title = "		Enemy Armor Probability";
	values[]={1,25,50,75,100};
	texts[]={"0 % chance Heavy Armor + Rewards disabled","25 % chance","50 % chance","75 % chance","100 % chance"};
	default = 75;
	};
	class AI_SpawnDis//16
	{
	title = "		Enemy AI Spawn Trigger Distance";
	values[]={200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1050,1100,1150,1200,1250};
	texts[]={"200","250","300","350","400","450","500","550","600","650","700","750","800","850","900","950","1000","1050","1100","1150","1200","1250"};
	default = 300;
	};
	class Max_Act_Gzones//17
	{
	title = "		Maximum Simultaneous Activated Zone Limit";
	values[]={10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,150,300,1000};
	texts[]={"10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85","90","95","100","150","300","1000"};
	default = 35;
	};
	class DeAct_Gzone_delay//18
	{
	title = "		Grid zone deactivation delay";
	values[]={0,0.5,1,2,3,4,5,6,8,10,12,14,16,18,20,30};
	texts[]={"Disabled","30 seconds","1 minute","2 minutes","3 minutes","4 minutes","5 minutes","6 minutes","8 minutes","10 minutes","12 minutes","14 minutes","16 minutes","18 minutes","20 minutes","30 minutes"};
	default = 2;
	};
	class EnableEnemyAir//19
	{
	title = "		Enable JIG Enemy Air Patrols?";
	values[]={0,1,2,3,4,5,6};
	texts[]={"No","A3 Helis Only","A3 Fixed Wing Only","A3 Helis and A3 Fixed Wing","Moded Helis Only","Moded Fixed Wing Only","Moded Helis and Moded Fixed Wing"};
	default = 3;
	};
	class AirRespawnDelay//20
	{
	title = "		Minimum Enemy Air Patrol Respawn Delay";
	values[]={45,300,600,1200,1800,2400,3000,3600};
	texts[]={"45 seconds","5 minutes","10 minutes","20 minutes","30 minutes","40 minutes","50 minutes","60 minutes"};
	default = 2400;
	};
	class PatroleWPmode//21
	{
	title = "		Air Patrol way-point type";
	values[]={0,1};
	texts[]={"Seek N Destroy","Hunt Players"};
	default = 1;
	};
	class INS_Dum_Param5//22
	{
	title = ":: Skills ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class BTC_p_skill//23
	{
	title = "		Set AI skill on non EOS units. (ASR AI detection will override this)";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class BTC_AI_skill//24
	{
	title = "		AI accuracy on non EOS units. (ASR AI detection will override this)";
	values[]={1,2,3,4,5,6,7,8,9,10};
	texts[]={"0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
	default = 5;
	};
	class INS_Dum_Param6//25
	{
	title = ":: Civilians ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class CiviMobiles//26
	{
	title = "		Ambient Mobile Civilians?";
	values[]={0,1,2,3,4};
	texts[]={"No","1 Per Player","2 Per Player","3 Per Player","4 Per Player"};
	default = 1;
	};
	class CiviFoot//27
	{
	title = "		Ambient Foot Civilians?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class CivProbability//28
	{
	title = "		Ambient Foot Civilians Probability";
	values[]={25,50,75,100};
	texts[]={"25 % chance","50 % chance","75 % chance","100 % chance"};
	default = 100;
	};
	class SuicideBombers//29
	{
	title = "		Enable Civilian Suicide Bomber?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class INS_Dum_Param7//30
	{
	title = ":: Mission Settings ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class INS_play_op4//31
	{
	title = "		Playable Opfor";
	values[]={0,1};
	texts[]={"Disabled","Enabled"};
	default = 1;
	};
	class INS_logistics//32
	{
	title = "		Logistics";
	values[]={0,1,2,3};
	texts[]={
	"Disabled",
	"BTC's cargo, towing, object placement and lifting",
	"BTC's cargo, towing and object placement. Duda's Advanced Sling Load lifting. Heavy enabled",
	"BTC's cargo, towing and object placement. Duda's Advanced Sling Load lifting. Heavy disabled (realistic)"};
	default = 1;
	};
	class Fatigue_ability//33
	{
	title = "		Fatigue and Stamina System";
	values[]={0,1};
	texts[]={"Arma 3 Player Fatigue and Stamina Disabled","Arma 3 Default Player Fatigue and Stamina Enabled"};
	default = 0;
	};
	class EOS_DAMAGE_MULTIPLIER//34
	{
	title = "		Damage Multiplier (Effective hit on enemy A.I.)";
	values[]={50,100,200,300};
	texts[]={"Low","Default","High","Very High"};
	default = 200;
	};
	class INSpDamMul//35
	{
	title = "		Damage Multiplier (Effective hit on Player) - not used when ACE3 mod is loaded";
	values[]={50,60,70,80,90,100,110,120,130,140,150};
	texts[]={"50%","60%","70%","80%","90%","100% (Unmodified Default)","110%","120%","130%","140%","150%"};
	default = 100;
	};
	class JigHeliExtraction//36
	{
	title = "		Enable CAS1 Group Heli Extraction?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class INS_GasGrenadeMod//37
	{
	title = "		Enable Gas Grenades and Masks";
	values[]={0,1};
	texts[]={
	"No",
	"Yes (Yellow Hand and GL smoke grenades. A3 Heli Crew Helmets and or Gas Masks from @hiddenidentitypack, @nato_russian_sf_weapons, @AVON FM12 mods"};
	default = 1;
	};
	class limitPOV//38
	{
	title = "		Third person view in vehicles only?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 0;
	};
	class INS_Player_Markers//39
	{
	title = "		Player Markers";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};	
	class max_ai_recruits//40
	{
	title = "		Recruitable AI units maximum allowed";
	values[]={1,2,3,4,5,6,7,8,9,10};
	texts[]={"Recruitable AI disabled","1","2","3","4","5","6","7","8","9"};
	default = 10;
	};
	class AI_radio_volume//41
	{
	title = "		Disable Audible AI Radio?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 0;
	};
	class INS_full_loadout//42
	{
	title = "		Enable Save/Restore full loadout on respawn?";
	values[]={0,1};
	texts[]={"No, respawn with inventory you had at death (Reload Magazine to Save Kit)","Yes"};
	default = 1;
	};
	class INS_Dum_Param8//43
	{
	title = ":: Intel/AmmoCaches ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class EnemyAmmoCache//44
	{
	title = "		Enable Enemy Ammo Caches?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class Intel_Loc_Alpha//45
	{
	title = "		Show Intel Location Markers?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 1;
	};
	class Intel_Count//46
	{
	title = "		Maximum possible intel per occupied grid zone ratio";
	values[]={2,3,4,5,6};
	texts[]={"1 intel : 2 zones","1 intel : 3 zones","1 intel : 4 zones","1 intel : 5 zones","1 intel : 6 zones"};
	default = 4;
	};
	class INS_Dum_Param9//47
	{
	title = ":: Debug ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class DebugEnabled//48
	{
	title = "		Debug mode?";
	values[]={0,1};
	texts[]={"No","Yes"};
	default = 0;
	};
	class tky_perfmon//49
	{
	title = "		Run performance monitor? (Requires Debug mode Enabled.)";
	values[]={0,30,60,300};
	texts[]={"Off","Every 30 seconds","Once a minute","Once every 5 minutes"};
	default = 0;
	};
};