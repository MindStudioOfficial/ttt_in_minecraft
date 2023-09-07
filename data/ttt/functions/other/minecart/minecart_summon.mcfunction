execute as @e[tag=minecart_spawner] at @s run summon minecart ~ ~ ~ {Invulnerable: 1b, CustomNameVisible: 0b, Tags: ["minecart", "magn_physics"], CustomName: '{"text":"Minecart"}'}

execute as @e[tag=minecart_spawner] at @s run summon interaction ~ ~ ~ {width: 1.1f, height: .8f, response: 1b, Tags: ["minecart", "magn_interaction"], CustomName: '{"text":"Minecart Interaction"}'}