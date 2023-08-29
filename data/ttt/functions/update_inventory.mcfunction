#* give traitor room key
execute as @a[team=traitor] unless entity @s[nbt={Inventory: [{tag: {t_key: 1b}}]}] run item replace entity @s hotbar.6 with name_tag{display: {Name: '{"text":"Traitor Room Key","color":"dark_red","italic":false,"bold":true}', Lore: ['{"text":"Hold in front of door"}']}, t_key: 1b} 1
#* give traitor shop
execute as @a[team=traitor] unless entity @s[nbt={Inventory: [{tag: {t_shop: 1b}}]}] run item replace entity @s hotbar.7 with emerald{display: {Name: '{"text":"Traitor Shop","color":"dark_red","italic":false,"bold":true}', Lore: ['{"text":"Hold and right click to open shop"}']}, t_shop: 1b} 1

#item replace entity @a[gamemode=!spectator,team=!admin] armor.feet with leather_boots{display: {Name: '{"text":"Boots","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', color: 0}, HideFlags: 39, Unbreakable: 1b, boots: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 1s}]} 1
#* give detective vest
execute as @a[team=detective] unless entity @s[nbt={Inventory: [{tag: {d_vest: 1b}}]}] run item replace entity @a[team=detective] armor.chest with leather_chestplate{display: {Name: '{"text":"Detective Vest","color":"dark_blue","bold":true}', color: 255}, HideFlags: 255, Unbreakable: 1b, d_vest: 1b, AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 6, Operation: 0, UUID: [I; 1476866746, 685982095, -1498705269, -221107670], Slot: "chest"}], Trim: {material: "minecraft:quartz", pattern: "minecraft:spire"}} 1

#* give everyone a sword

execute as @a[predicate=ttt:alive_player] unless entity @s[nbt={Inventory: [{tag: {sword: 1b}}]}] run item replace entity @s hotbar.0 with wooden_sword{display: {Name: '{"text":"Sword","color":"gold","bold":true}', Lore: ['{"text":"... for close combat."}']}, HideFlags: 255, Unbreakable: 1b, sword: 1b} 1