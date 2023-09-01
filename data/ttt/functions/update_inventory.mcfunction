#* give detective vest
execute as @a[team=detective] unless entity @s[nbt={Inventory: [{tag: {d_vest: 1b}}]}] run item replace entity @a[team=detective] armor.chest with leather_chestplate{display: {Name: '{"text":"Detective Vest","color":"dark_blue","bold":true}', color: 255}, HideFlags: 255, Unbreakable: 1b, d_vest: 1b, AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 6, Operation: 0, UUID: [I; 1476866746, 685982095, -1498705269, -221107670], Slot: "chest"}], Trim: {material: "minecraft:quartz", pattern: "minecraft:spire"}} 1

#* give everyone a sword

execute as @a[predicate=ttt:alive_player] unless entity @s[nbt={Inventory: [{tag: {sword: 1b}}]}] run item replace entity @s hotbar.0 with wooden_sword{display: {Name: '{"text":"Sword","color":"gold","bold":true}', Lore: ['{"text":"... for close combat."}']}, HideFlags: 255, Unbreakable: 1b, sword: 1b, CustomModelData: 534} 1