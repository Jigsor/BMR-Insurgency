/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/

private ["_side","_fac1","_fac2"];
_side = _this select 0;
_fac1 = _this select 1;//major
_fac2 = _this select 2;//minor

EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";
Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";
null=[] execVM "eos\core\spawn_fnc.sqf";
if (isServer) then {["updateEOSmkrs","onplayerConnected", {[] execVM "eos\functions\EOS_Markers.sqf";}] call BIS_fnc_addStackedEventHandler;};

VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_KILLCOUNTER=false;		// Counts killed units

// Most northern no name town
null = [["m1"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m2"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m3"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m4"],[1,1,InfPb],[1,1,InfPb],[0,0],[2,MecArmPb],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m5"],[2,1,InfPb],[0,0],[1,3],[0,0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m6","m7"],[2,1,InfPb],[2,1,InfPb],[0,0],[0,0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m7"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m8","m9"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m10"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m11"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m12"],[0,0],[2,1,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m13"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m14","m15"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Bahad
null = [["m16"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m17","m18"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m19","m20"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m21","m22"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m23"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m24"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m25"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m26"],[0,0],[1,2,InfPb],[1,3],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m27","m28"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m29"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m30"],[1,1,InfPb],[1,2,InfPb],[0,0],[2,MecArmPb],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m31"],[2,1,InfPb],[0,0],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m32"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Abbadaez
null = [["m33"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m34"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m35"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m36","m37"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m38","m39"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m40"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m41"],[0,0],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m42"],[2,2,InfPb],[0,0],[0,0],[0],[1],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m43"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m44"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m45"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m46","m47"],[1,2,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m48","m49"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m50","m51"],[0,0],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m52","m54"],[0,0],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m53"],[0,0],[1,2,InfPb],[0,0],[0],[0],[1,4],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m55"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m56","m57"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Khassadar
null = [["m58","m59"],[2,0,InfPb],[1,1,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m60","m61"],[0,0],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m62","m63"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m64"],[0,0],[1,1,InfPb],[0,0],[2,MecArmPb],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m65","m66"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m67","m68"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Sirak
null = [["m69"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m70","m71"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m72"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m73"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m74"],[0,0],[1,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m75"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Gor Sirak
null = [["m76"],[0,0],[0,0],[0,0],[0],[0],[1,4],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m77"],[2,1,InfPb],[0,0],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Hama
null = [["m78"],[3,1,InfPb],[1,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m79"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m80"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m81"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m82"],[0,0],[1,2,InfPb],[0,0],[0],[0],[1,4],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m83","m84"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m85"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m86","m87"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m88","m89"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m90"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m91"],[1,1,InfPb],[1,1,InfPb],[0,0],[2,MecArmPb],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Mussara/Mussarem
null = [["m92"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m93"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m94"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m95","m96"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m97"],[0,0],[1,2,InfPb],[1,3],[0],[1],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Sirika
null = [["m98"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m99"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m100"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m101"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m102"],[1,2,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m103"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m104"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Azagal Valley
null = [["m105","m106"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m107"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m108"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Suhan/Suhanir/Fata
null = [["m109"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m110"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m111"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m112"],[1,1,InfPb],[1,2,InfPb],[0,0],[2,MecArmPb],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m113"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m114"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Sukri Farem
null = [["m115"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m116"],[0,0],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m117"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m118"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m119"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Goram
null = [["m120"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m121"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m122"],[1,1,InfPb],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m123"],[2,1,InfPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m124","m125"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m126"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m127"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m128"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Al Qalat
null = [["m129"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[0],[1,4],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Urugal
null = [["m130"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m131"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Tottah
null = [["m132","m133"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m134"],[1,1,InfPb],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m135"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m136"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[1],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m137","m138"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m139","m140"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m141"],[2,1,InfPb],[1,1,InfPb],[0,0],[2,MecArmPb],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m142"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m143","m144"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m145"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m146"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m147"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m148"],[2,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m149"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m150"],[2,1,InfPb],[1,1,InfPb],[0,0],[0],[1],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m151"],[2,1,InfPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m152"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m153"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m154","m155"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m156"],[1,1,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Bazah Tamir
null = [["m157","m158"],[1,2,InfPb],[1,2,InfPb],[0,0],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Buzarak
null = [["m159","m160"],[1,1,InfPb],[2,1,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//Far west settlement no name
null = [["m161"],[1,1,InfPb],[1,2,InfPb],[1,3],[0],[0],[0,0],[_fac1,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
null = [["m162","m163"],[1,2,InfPb],[2,2,InfPb],[0,0],[0],[0],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//East of Sukri river
null = [["m164"],[3,1,InfPb],[2,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;
//On river
null = [["m165"],[1,1,InfPb],[2,2,InfPb],[0,0],[0],[1],[0,0],[_fac2,0,AI_SpawnDis,_side,true]] call EOS_Spawn;