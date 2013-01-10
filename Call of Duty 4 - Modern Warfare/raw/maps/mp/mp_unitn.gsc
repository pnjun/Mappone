main()
{
maps\mp\_explosive_barrels::main();

game["allies"] = "marines";
game["axis"] = "opfor";
game["attackers"] = "axis";
game["defenders"] = "allies";
game["allies_soldiertype"] = "desert";
game["axis_soldiertype"] = "desert";



//********Fuoco*************
vehicle_fire = LoadFX("fire/tank_fire_engine");
gas_fire = LoadFX("fire/gas_pump_fire");


//Hammer
PlayLoopedFX( vehicle_fire, 2, (-1156, 504, -1830) );
PlayLoopedFX( vehicle_fire, 3, (-1126, 515, -1830) );

//Tank valoni
PlayLoopedFX( vehicle_fire, 2, (-924, 948, -1800) );

//Bidoni cucina
PlayLoopedFX( vehicle_fire, 2, (688, 1552, -2040) );

//Bidoni mensa sopra
PlayLoopedFX( vehicle_fire, 3, (822, 922, -1792) );

//Copertoni
PlayLoopedFX( gas_fire, 3, (2594, 1047.5, -802.5) );


//*********Dust*************
slow_dust_paper = LoadFX("dust/dust_wind_slow_yel_loop");
//slow_dust = LoadFX("dust/dust_wind_slow_yel");
ground_dust = LoadFX("dust/dust_ground_gust");

//Polvere cantiere
PlayLoopedFX( slow_dust_paper, 1, (3392, 2048, -2048) );

//Tetti
PlayLoopedFX( ground_dust, 4, (1984, 1232, -1648) );
PlayLoopedFX( ground_dust, 5, (2736, 1232, -1648) );
PlayLoopedFX( ground_dust, 4, (400, 1232, -1648) );

//Strada
PlayLoopedFX( slow_dust_paper, 4, (1136, 560, -1824) );
PlayLoopedFX( ground_dust, 3, (-1088, 560, -1824) );
PlayLoopedFX( ground_dust, 3, (2352, 560, -1824) );
}