#* gives the admin the spawner items

team join admin
clear @s[team=admin]

#* spawnpoint
give @s[team=admin] piglin_spawn_egg{display: {Name: '{"text":"Add Player Spawnpoint"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["spawnpoint", "spawner"], CustomName: '{"text":"Spawnpoint","color":"gold"}'}} 1

#* score holder sign
give @s[team=admin] allay_spawn_egg{display: {Name: '{"text":"Add Score Sign"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["sign", "spawner"], CustomName: '{"text":"Sign Spawner","color":"gold"}'}} 1

#* weapons
give @s[team=admin] silverfish_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Rifle)"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_rifle", "spawner"], CustomName: '{"text":"Rifle Spawner","color":"gold"}'}} 1

give @s[team=admin] evoker_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Pistol)"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_pistol", "spawner"], CustomName: '{"text":"Pistol Spawner","color":"gold"}'}} 1

give @s[team=admin] ravager_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (MP5)"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_mp5", "spawner"], CustomName: '{"text":"MP5 Spawner","color":"gold"}'}} 1

give @s[team=admin] enderman_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Smoke Grenade)"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_grenade_smoke", "spawner"], CustomName: '{"text":"Smoke Spawner","color":"gold"}'}} 1

give @s[team=admin] blaze_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Fire Grenade)"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_grenade_fire", "spawner"], CustomName: '{"text":"Fire Spawner","color":"gold"}'}} 1

give @s[team=admin] ghast_spawn_egg{display: {Name: '{"text":"Add Breakable Glass Spawner"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["glass", "spawner"], CustomName: '{"text":"Glass Spawner","color":"gold"}'}} 1

#* traitor door
give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Traitor Door Spawner"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["tdoor", "spawner"], CustomName: '{"text":"Traitor Door Spawner","color":"gold"}'}} 1

give @s[team=admin] creeper_spawn_egg{display: {Name: '{"text":"Add Explosive Barrel Spawner"}'}, spawner: 1b, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["explosive_barrel", "spawner"], CustomName: '{"text":"Explosive Barrel Spawner","color":"gold"}'}} 1

#* remove
give @s[team=admin] spider_spawn_egg{display: {Name: '{"text":"Remove Any Spawner"}'}, HideFlags: 1, removespawner: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["removespawner"], CustomName: '{"text":"Spawner Remover","color":"gold"}'}} 1
