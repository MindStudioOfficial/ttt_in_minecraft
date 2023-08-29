#make loop from 0 to 500
scoreboard players add @s value 1

#* muzzle flash
execute at @s[scores={value=0..3}] run particle flame ~ ~ ~ 0 0 0 0 1 force
execute at @s[scores={value=0..1}] run particle dust 0.5 0.5 0.5 1 ~ ~ ~ .04 .04 .04 0.01 10 force

#cast the ray 200 blocks unless block in 1 gametick
execute at @s[predicate=ttt:in_ray_passable_block] run tp @s ^ ^ ^-.5

#* Damage:
#* RIFLE
#* feet
execute at @s[tag=ray_rifle] positioned ~ ~ ~ if entity @a[distance=...7,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 5 minecraft:generic
#* body
execute at @s[tag=ray_rifle] positioned ~ ~-1 ~ if entity @a[distance=...7,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 7 minecraft:generic
#* headshot
execute at @s[tag=ray_rifle] positioned ~ ~-1.6 ~ if entity @a[distance=...25,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 14 minecraft:generic


#* Pistol
#* feet
execute at @s[tag=ray_pistol] positioned ~ ~ ~ if entity @a[distance=...7,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 2 minecraft:generic
#* body
execute at @s[tag=ray_pistol] positioned ~ ~-1 ~ if entity @a[distance=...7,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 4 minecraft:generic
#* headshot
execute at @s[tag=ray_pistol] positioned ~ ~-1.6 ~ if entity @a[distance=...25,team=!preparing] run damage @a[distance=...6,team=!preparing,limit=1,sort=nearest] 7 minecraft:generic


#* Highlight body parts (for debugging) (clear with /kill @e[tag=test])
#* feet
##execute at @e[tag=ray] positioned ~ ~ ~ if entity @a[distance=...6,team=!preparing] run summon block_display ~ ~ ~ {Tags: ["test"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-.05f, -.05f, -.05f], scale: [.1f, .1f, .1f]}, block_state: {Name: "minecraft:gold_block"}}
#* body
##execute at @e[tag=ray] positioned ~ ~-1 ~ if entity @a[distance=...6,team=!preparing] run summon block_display ~ ~1 ~ {Tags: ["test"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-.05f, -.05f, -.05f], scale: [.1f, .1f, .1f]}, block_state: {Name: "minecraft:redstone_block"}}
#* head
##execute at @e[tag=ray] positioned ~ ~-1.6 ~ if entity @a[distance=...25,team=!preparing] run summon block_display ~ ~1.6 ~ {Tags: ["test"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-.05f, -.05f, -.05f], scale: [.1f, .1f, .1f]}, block_state: {Name: "minecraft:emerald_block"}}


#* Break glass
execute at @s positioned ~ ~ ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute at @s positioned ~ ~-1 ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy

#* loop

#* kill bullet if hit block
execute at @s unless predicate ttt:in_ray_passable_block run particle dust 0.475 0.475 0.475 1 ^ ^ ^.2 .04 .04 .04 0 20 force
execute at @s unless predicate ttt:in_ray_passable_block run kill @s
#* kill bullet if over 300 blocks away from a player
execute at @s unless entity @a[distance=..500] run kill @s

execute as @s[scores={value=..499}] run function ttt:raycast/tp

execute as @s[scores={value=500..}] run kill @s
