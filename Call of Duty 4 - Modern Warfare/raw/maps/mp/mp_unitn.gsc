main()
{
maps\mp\_explosive_barrels::main();

game["allies"] = "marines";
game["axis"] = "opfor";
game["attackers"] = "axis";
game["defenders"] = "allies";
game["allies_soldiertype"] = "desert";
game["axis_soldiertype"] = "desert";

//Fuoco
vehicle_fire = LoadFX("fire/tank_fire_engine");
gas_fire = LoadFX("fire/gas_pump_fire");


//Hammer
PlayLoopedFX( vehicle_fire, 0.5, (-1156, 504, -1819) );
PlayLoopedFX( vehicle_fire, 0.5, (-1126, 525, -1819) );

//Tank valoni
PlayLoopedFX( vehicle_fire, 0.5, (-924, 948, -1791) );

//Bidoni cucina
PlayLoopedFX( vehicle_fire, 0.5, (688, 1552, -2034) );

//Bidoni mensa sopra
PlayLoopedFX( vehicle_fire, 3, (822, 922, -1785) );

//Copertoni
PlayLoopedFX( gas_fire, 3, (2594, 1047.5, -802.5) );
}