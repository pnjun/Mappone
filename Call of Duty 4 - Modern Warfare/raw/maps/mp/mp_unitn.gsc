main()
{
maps\mp\_explosive_barrels::main();
vehicle_fire = LoadFX("fire/tank_fire_engine");

game["allies"] = "marines";
game["axis"] = "opfor";
game["attackers"] = "axis";
game["defenders"] = "allies";
game["allies_soldiertype"] = "desert";
game["axis_soldiertype"] = "desert";

PlayLoopedFX( vehicle_fire, 1, (-1120, 576, -1824) );
PlayLoopedFX( vehicle_fire, 1, (-864, 1264, -1924) );
PlayLoopedFX( vehicle_fire, 1, (688, 1536, -2032) );
PlayLoopedFX( vehicle_fire, 1, (2880, 1744, -2032) );
}