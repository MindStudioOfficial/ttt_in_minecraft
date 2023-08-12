#[shopping]: 0 = not shopping, 1 = opening shop, 2 = shopping, 3 = closing shop

#--- open shop ---
execute as @a[team=traitor] if entity @s[scores={shopping=0},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 1

execute at @e[tag=sign] if entity @a[team=traitor,scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run summon villager ~ ~ ~ {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, NoAI: 1b, CanPickUpLoot: 0b, Willing: 0b, Tags: ["t_shop"], CustomName: '{"text":"Traitor Shop","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', ActiveEffects: [{Id: 14b, Amplifier: 1b, Duration: 2000000, ShowParticles: 0b}], VillagerData: {level: 1, profession: "minecraft:armorer", type: "minecraft:desert"}, Offers: {Recipes: [{xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:potion", Count: 1b, tag: {display: {Name: '{"text":"Medikit","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Drink to heal"}']}, HideFlags: 39, CustomModelData: 851, Potion: "minecraft:healing"}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:diamond_sword", Count: 1b, tag: {display: {Name: '{"text":"Bloody Knife","color":"dark_red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"A mighty One-Hit Knife"}']}, HideFlags: 39, Damage: 1560, CustomModelData: 983, Enchantments: [{id: "minecraft:sharpness", lvl: 127s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 0.72d, Operation: 1, UUIDLeast: 314312, UUIDMost: 625733, Slot: "mainhand"}]}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:wooden_hoe", Count: 1b, tag: {display: {Name: '{"text":"Baseball Bat","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Throw people of the cliff"}']}, HideFlags: 39, Damage: 57, CustomModelData: 524, Enchantments: [{id: "minecraft:knockback", lvl: 20s}]}}}, {xp: 0, buy: {id: "minecraft:emerald", Count: 1b, tag: {display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}}, sell: {id: "minecraft:ender_pearl", Count: 1b, tag: {display: {Name: '{"text":"Quick Escape Pearl","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', Lore: ['{"text":"Teleports you to where it lands"}']}, HideFlags: 39, CustomModelData: 816}}}]}}


execute at @e[tag=sign] run tp @e[tag=t_shop] @a[team=traitor,scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}},limit=1]
execute as @a[team=traitor] if entity @s[scores={shopping=1},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 2


#--- shopping ---
execute at @a[team=traitor,scores={shopping=2},nbt={SelectedItem: {tag: {t_shop: 1b}}}] run tp @e[tag=t_shop,limit=1,sort=nearest] ^ ^ ^2


#--- close shop ---
execute as @a[team=traitor,scores={shopping=2}] run execute unless entity @s[nbt={SelectedItem: {tag: {t_shop: 1b}}}] run scoreboard players set @s shopping 3
execute as @a[team=traitor,scores={shopping=3}] run execute at @s run tp @e[tag=t_shop,distance=..2.5] @e[tag=sign,limit=1]
execute at @e[tag=sign,limit=1] run kill @e[tag=t_shop,distance=..1]
scoreboard players set @a[team=traitor,scores={shopping=3}] shopping 0
