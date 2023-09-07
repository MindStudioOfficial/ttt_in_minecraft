execute as @e[tag=mineable_spawner] at @s unless entity @e[tag=mine_interaction,distance=...1] unless block ~ ~ ~ air run summon interaction ~ ~ ~ {width: 1.1f, height: 1.1f, Tags: ["mine", "mine_interaction"], Passengers: [{id: "minecraft:block_display", Tags: ["mine", "mine_display"], CustomName: '{"text":"Mineable Display"}', transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-.5f, 0f, -.5f], scale: [1f, 1f, 1f]}, block_state: {Name: "minecraft:redstone_block"}}], CustomName: '{"text":"Mineable Interaction"}'}

function ttt:other/mineable/mine_replace

execute as @e[tag=mine_display] unless entity @s[nbt={block_state: {Name: "minecraft:redstone_block"}}] at @s run setblock ~ ~ ~ barrier replace