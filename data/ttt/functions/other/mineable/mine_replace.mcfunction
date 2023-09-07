execute as @e[tag=mine_display,nbt={block_state: {Name: "minecraft:redstone_block"}}] at @s if block ~ ~ ~ iron_ore run data modify entity @s block_state.Name set value "minecraft:iron_ore"

execute as @e[tag=mine_display,nbt={block_state: {Name: "minecraft:redstone_block"}}] at @s if block ~ ~ ~ diamond_ore run data modify entity @s block_state.Name set value "minecraft:diamond_ore"

execute as @e[tag=mine_display,nbt={block_state: {Name: "minecraft:redstone_block"}}] at @s if block ~ ~ ~ stone run data modify entity @s block_state.Name set value "minecraft:stone"

execute as @e[tag=mine_display,nbt={block_state: {Name: "minecraft:redstone_block"}}] at @s if block ~ ~ ~ dirt run data modify entity @s block_state.Name set value "minecraft:dirt"