#! executed as the fireing player with either shooting_pistol or shooting_rifle tag at the current iteration positoion

execute if score @s rangeleft matches 1.. run scoreboard players remove @s rangeleft 1

#* muzzle flash
execute if score @s rangeleft matches 496..498 run particle flame ~ ~-.2 ~ .02 .02 .02 0.01 1 force
execute if score @s rangeleft matches 496..498 run particle dust 0.5 0.5 0.5 1 ~ ~-.2 ~ .04 .04 .04 0.01 4 force

#* Damage:
#* feet
execute positioned ~ ~-.3 ~ as @a[distance=...35,tag=!shooting,predicate=ttt:alive_player] run tag @s add hit_feet
#* body
execute positioned ~ ~-1 ~ as @a[distance=...55,tag=!shooting,predicate=ttt:alive_player] run tag @s add hit_body
#* headshot
execute positioned ~ ~-1.7 ~ as @a[distance=...4,tag=!shooting,predicate=ttt:alive_player] run tag @s add hit_head

function ttt:raycast/hit_deal_damage

#* Break glass
execute positioned ~ ~ ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute positioned ~ ~-1 ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy

#* loop

#* kill bullet if hit block
execute unless predicate ttt:in_ray_passable_block run particle dust 0.475 0.475 0.475 1 ^ ^ ^.2 .04 .04 .04 0 20 force
execute unless predicate ttt:in_ray_passable_block run scoreboard players set @s rangeleft 0
#* kill bullet if over 300 blocks away from a player
execute unless entity @a[distance=..500] run scoreboard players set @s rangeleft 0

#! move execution positon forward as long as the block is passable and we have distance left
execute if predicate ttt:in_ray_passable_block if score @s rangeleft matches 1.. positioned ^ ^ ^.5 run function ttt:raycast/tp


