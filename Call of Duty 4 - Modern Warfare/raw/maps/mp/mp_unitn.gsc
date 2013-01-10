main()
{
maps\mp\_explosive_barrels::main();
level._effect["fire"] = loadfx ("fire/firelp_barrel_pm"); 
maps\mp\_fx::loopfx("fire", (-1120, 576, -1824), 3);
maps\mp\_fx::loopfx("fire", (-864, 1264, -1924), 3);
maps\mp\_fx::loopfx("fire", (688, 1536, -2032), 3);
maps\mp\_fx::loopfx("fire", (2880, 1744, -2032), 3);
level._effect["smoke"] = loadfx ("smoke/steam_large_vent");
maps\mp\_fx::loopfx("smoke", (-1120, 576, -1820), 3);
maps\mp\_fx::loopfx("smoke", (-864, 1264, -1920), 3);
maps\mp\_fx::loopfx("smoke", (688, 1536, -2032), 3);
maps\mp\_fx::loopfx("smoke", (2880, 1744, -2032), 3);
}