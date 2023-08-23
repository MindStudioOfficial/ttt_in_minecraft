#[shopping]: 0 = not shopping, 1 = opening shop, 2 = shopping, 3 = closing shop

#--- open shop ---
#*0
execute as @a[team=traitor,gamemode=adventure] if entity @s[scores={shopping=0},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 1
#*1
execute as @a[team=traitor,gamemode=adventure,scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}}] at @e[tag=sign,limit=1,sort=nearest] run summon villager ~ ~ ~ {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, NoAI: 1b, CanPickUpLoot: 0b, Willing: 0b, Tags: ["t_shop"], CustomName: '{"text":"Traitor Shop","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', ActiveEffects: [{Id: 14, Amplifier: 1b, Duration: -1, ShowParticles: 0b}], VillagerData: {level: 1, profession: "minecraft:armorer", type: "minecraft:desert"}, Offers: {Recipes: [{xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:potion", Count: 1b, tag: {display: {Name: '{"text":"Medikit","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Drink to heal"}']}, HideFlags: 39, CustomModelData: 851, CustomPotionEffects: [{Id: 10, Amplifier: 2b, Duration: 100, ShowParticles: 1b}], Potion: "minecraft:empty", CustomPotionColor: 16711680}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:diamond_sword", Count: 1b, tag: {display: {Name: '{"text":"Bloody Knife","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"A mighty One-Hit Knife"}']}, HideFlags: 39, Damage: 1560, CustomModelData: 983, Enchantments: [{id: "minecraft:sharpness", lvl: 127s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.72d, Operation: 1, UUID: [I; 1515886138, -1847179933, -1917893140, 388316605], Slot: "mainhand"}]}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:wooden_hoe", Count: 1b, tag: {display: {Name: '{"text":"Baseball Bat","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Throw people of the cliff"}']}, HideFlags: 39, Damage: 57, CustomModelData: 524, Enchantments: [{id: "minecraft:knockback", lvl: 20s}]}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:ender_pearl", Count: 1b, tag: {display: {Name: '{"text":"Quick Escape Pearl","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Teleports you to where it lands"}']}, HideFlags: 39, CustomModelData: 816}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:mooshroom_spawn_egg", Count: 1b, tag: {CanPlaceOn: ["#minecraft:mineable/pickaxe", "#minecraft:mineable/axe", "#minecraft:mineable/shovel"], display: {Name: '{"text":"C4","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Goes BOOM after 30s"}']}, HideFlags: 255, CustomModelData: 30, c4: 1b, EntityTag: {id: "minecraft:item_display", NoGravity: 1b, HasVisualFire: 0b, Glowing: 0b, CustomNameVisible: 0b, billboard: "fixed", item_display: "ground", Rotation: [0f, 90f], Tags: ["c4"], CustomName: '{"text":"C4 Spawner","color":"gold"}', item: {id: "minecraft:mooshroom_spawn_egg", Count: 1b, tag: {CustomModelData: 30, c4: 1b, EntityTag: {id: "minecraft:zombie"}}}}}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:potion", Count: 1b, tag: {display: {Name: '{"text":"Invisibility Potion","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Turns you invisible for 30s"}']}, HideFlags: 255, CustomPotionEffects: [{Id: 14, Amplifier: 1b, Duration: 600, ShowParticles: 1b}], Potion: "minecraft:empty", CustomPotionColor: 16777215}}}]}}
execute as @a[team=traitor,gamemode=adventure,scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}}] at @e[tag=sign,limit=1,sort=nearest] run tp @e[tag=t_shop,distance=..1,sort=nearest,limit=1] @s
execute as @a[team=traitor,gamemode=adventure,scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 2
#*2
#--- shopping ---
execute at @a[team=traitor,gamemode=adventure,scores={shopping=2},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run tp @e[tag=t_shop,limit=1,sort=nearest] ^ ^ ^2
#--- close shop ---
execute as @a[team=traitor,gamemode=adventure,scores={shopping=2}] run execute unless entity @s[nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 3
#*3

#* close dead players shop
execute as @a[team=traitor,scores={shopping=0..2},gamemode=spectator] run scoreboard players set @s shopping 3
execute as @a[team=traitor,scores={shopping=3}] run execute at @s run tp @e[tag=t_shop,distance=..2.5] @e[tag=sign,limit=1]
execute at @e[tag=sign,limit=1] run kill @e[tag=t_shop,distance=..1]
scoreboard players set @a[team=traitor,scores={shopping=3}] shopping 0
#*0
