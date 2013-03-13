main()
{
//MINIMAP
maps\mp\_compass::setupMiniMap("compass_map_mp_unitn");
setdvar("compassmaxrange","2000");
maps\mp\_explosive_barrels::main();

ambientPlay("ambient100");
//game["allies"] = "sas";
//game["axis"] = "russian";
game["attackers"] = "axis";
game["defenders"] = "allies";
game["allies_soldiertype"] = "woodland";
game["axis_soldiertype"] = "woodland";


//********Fuoco/Fumo*************
vehicle_fire = LoadFX("fire/tank_fire_engine");
gas_fire = LoadFX("fire/gas_pump_fire");
fire_large = LoadFX("fire/firelp_large_pm");
crash_smoke = LoadFx("smoke/thin_light_smoke_M");
fire_smoke_large = LoadFx("smoke/smoke_large");

//Esterno
PlayLoopedFX( fire_smoke_large, 3, (4148, 840, -1900) );

//Elicottero disi
PlayLoopedFX( vehicle_fire, 2, (-54, 2049, -1664) );
PlayLoopedFX( vehicle_fire, 3, (-130, 2075, -1659) );
PlayLoopedFX( vehicle_fire, 3, (-132, 1832, -2035) );
PlayLoopedFX( crash_smoke, 3, (-130, 2075, -1659) );

//Elicottero piazzale
PlayLoopedFX( vehicle_fire, 3, (-1632, 1884,-2033) );
PlayLoopedFX( vehicle_fire, 3, (-1356, 1832, -2033) );
PlayLoopedFX( vehicle_fire, 3, (-1792, 1804, -2033) );

//Hammer
PlayLoopedFX( vehicle_fire, 2, (-1156, 504, -1842) );
PlayLoopedFX( vehicle_fire, 3, (-1126, 515, -1842) );

//Tank valoni
PlayLoopedFX( vehicle_fire, 2, (-924, 960, -1841) );

//Bidoni cucina
PlayLoopedFX( vehicle_fire, 2, (688, 1562, -2040) );

//Bidoni mensa sopra
PlayLoopedFX( vehicle_fire, 3, (822, 928, -1830) );

//Copertoni
PlayLoopedFX( gas_fire, 3, (3608, 2436, -2030) );
PlayLoopedFX( fire_large, 3, (3586, 2410, -2030) );


//*********Dust*************
slow_dust_paper = LoadFX("dust/dust_wind_slow_yel_loop");
dust_room = LoadFX("dust/room_dust_100");
slow_dust = LoadFX("dust/dust_wind_slow_yel");
ground_gust= LoadFX("dust/dust_ground_gust");

//Polvere inside
PlayLoopedFX( dust_room, 3, (2178, 801, -1981) );

//Polvere cantiere
PlayLoopedFX( slow_dust_paper, 1, (3392, 2048, -2048) );
PlayLoopedFX( ground_gust, 4, (3392, 2048, -2048) );

//Tetti
PlayLoopedFX( slow_dust, 2, (1984, 1232, -1648) );
PlayLoopedFX( slow_dust, 3, (2736, 1232, -1648) );
PlayLoopedFX( slow_dust, 4, (400, 1232, -1648) );

//Piazzale
PlayLoopedFX( slow_dust_paper, 5, (1136, 1770, -2032) );
PlayLoopedFX( slow_dust, 6, (-1100, 1770, -2032) );
PlayLoopedFX( slow_dust, 4, (-550, 1770, -2032) );
PlayLoopedFX( slow_dust, 5, (0, 1770, -2032) );
PlayLoopedFX( slow_dust, 6, (550, 1770, -2032) );
PlayLoopedFX( slow_dust_paper, 3, (1000, 1770, -2032) );
PlayLoopedFX( slow_dust, 5, (1400, 1770, -2032) );
PlayLoopedFX( slow_dust, 4, (1800,1770, -2032) );
PlayLoopedFX( slow_dust_paper, 6, (2352, 1770, -2032) );


//Strada
PlayLoopedFX( slow_dust_paper, 5, (1136, 560, -1824) );
PlayLoopedFX( slow_dust, 4, (-1100, 560, -1824) );
PlayLoopedFX( slow_dust, 6, (-550, 560, -1824) );
PlayLoopedFX( slow_dust, 5, (0, 560, -1824) );
PlayLoopedFX( slow_dust, 5, (550, 560, -1824) );
PlayLoopedFX( slow_dust_paper, 6, (1000, 560, -1824) );
PlayLoopedFX( slow_dust, 6, (1400, 560, -1824) );
PlayLoopedFX( slow_dust_paper, 4, (1800,560, -1824) );
PlayLoopedFX( slow_dust, 5, (2352, 560, -1824) );
PlayLoopedFX( slow_dust, 6, (3200, 560, -1824) );
PlayLoopedFX( slow_dust_paper, 4, (3760,560, -1824) );
PlayLoopedFX( slow_dust, 5, (4320, 560, -1824) );


//***Perk e armi*******
setDvar( "attach_allow_assault_gl", 0 );
setDvar( "class_assault_primary_attachment", "none" );
setDvar( "perk_allow_specialty_armorvest", 0 );
setDvar( "perk_allow_specialty_pistoldeath", 0 );
setDvar( "perk_allow_specialty_grenadepulldeath", 0 );
setDvar( "perk_allow_specialty_claymore_mp", 0 );


//***Easter Egg***
ladder = getent("easter_ladder", "targetname");
ladder hide();
ladder notsolid();

thread easter_egg();
}

easter_egg()
{
	ladder = getent("easter_ladder", "targetname");
	trigger = getent("easter_trigger", "targetname");
	while(1)
	{
		trigger waittill ("trigger");
		ladder show();
		ladder solid();
		wait(10);
		ladder hide();
		ladder notsolid();
	}
}
