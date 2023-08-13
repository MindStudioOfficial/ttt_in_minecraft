#* gives the admin the spawner items

team join admin
clear @s[team=admin]

#* spawnpoint
give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Player Spawnpoint"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["spawnpoint", "spawner"], CustomName: '{"text":"Spawnpoint","color":"gold"}'}} 1

#* score holder sign
give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Score Sign"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["sign", "spawner"], CustomName: '{"text":"Sign Spawner","color":"gold"}'}} 1

#* weapons
give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Rifle)"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_rifle", "spawner"], CustomName: '{"text":"Rifle Spawner","color":"gold"}'}} 1

give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Pistol)"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_pistol", "spawner"], CustomName: '{"text":"Pistol Spawner","color":"gold"}'}} 1

give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Smoke Grenade)"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_grenade_smoke", "spawner"], CustomName: '{"text":"Smoke Spawner","color":"gold"}'}} 1

give @s[team=admin] wolf_spawn_egg{display: {Name: '{"text":"Add Weapon Spawn (Fire Grenade)"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["weapon_grenade_fire", "spawner"], CustomName: '{"text":"Fire Spawner","color":"gold"}'}} 1

give @s[team=admin] turtle_spawn_egg{display: {Name: '{"text":"Add Breakable Glass Spawner"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["glass", "spawner"], CustomName: '{"text":"Glass Spawner","color":"gold"}'}} 1

#* remove
give @s[team=admin] chicken_spawn_egg{display: {Name: '{"text":"Remove Any Spawner"}'}, HideFlags: 1, removespawner: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}], EntityTag: {id: "minecraft:marker", Tags: ["removespawner"], CustomName: '{"text":"Spawner Remover","color":"gold"}'}} 1
