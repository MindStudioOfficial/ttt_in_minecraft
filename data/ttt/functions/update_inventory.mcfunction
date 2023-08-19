#* give traitor room key
execute as @a[team=traitor] unless entity @s[nbt={Inventory: [{tag: {t_key: 1b}}]}] run item replace entity @s hotbar.6 with name_tag{display: {Name: '{"text":"Traitor Room Key","color":"dark_red","italic":false,"bold":true}', Lore: ['{"text":"Hold in front of door"}']}, t_key: 1b} 1
#* give traitor shop
execute as @a[team=traitor] unless entity @s[nbt={Inventory: [{tag: {t_shop: 1b}}]}] run item replace entity @s hotbar.7 with emerald{display: {Name: '{"text":"Traitor Shop","color":"dark_red","italic":false,"bold":true}', Lore: ['{"text":"Hold and right click to open shop"}']}, t_shop: 1b} 1

#item replace entity @a[gamemode=!spectator,team=!admin] armor.feet with leather_boots{display: {Name: '{"text":"Boots","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}', color: 0}, HideFlags: 39, Unbreakable: 1b, boots: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 1s}]} 1