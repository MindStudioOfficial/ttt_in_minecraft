#! executed as the fireing player with either shooting_pistol or shooting_rifle tag at the current iteration positoion

execute if score @s rangeleft matches 1.. run scoreboard players remove @s rangeleft 1

#* muzzle flash
execute if score @s rangeleft matches 496..498 run particle flame ~ ~-.2 ~ .02 .02 .02 0.01 4 force
execute if score @s rangeleft matches 496..498 run particle dust 0.5 0.5 0.5 1 ~ ~-.2 ~ .04 .04 .04 0.01 4 force

#* Damage:


#* PISTOL
#* feet
execute if entity @s[tag=shooting_pistol] positioned ~ ~ ~ as @a[distance=...7,tag=!shooting_pistol,predicate=ttt:alive_player] run damage @s 2 minecraft:generic by @e[tag=shooting_pistol,limit=1,sort=nearest]
#* body
execute if entity @s[tag=shooting_pistol] positioned ~ ~-1 ~ as @a[distance=...7,tag=!shooting_pistol,predicate=ttt:alive_player] run damage @s 4 minecraft:generic by @e[tag=shooting_pistol,limit=1,sort=nearest]
#* headshot
execute if entity @s[tag=shooting_pistol] positioned ~ ~-1.6 ~ as @a[distance=...25,tag=!shooting_pistol,predicate=ttt:alive_player] run damage @s 7 minecraft:generic by @e[tag=shooting_pistol,limit=1,sort=nearest]

#* RIFLE
#* feet
execute if entity @s[tag=shooting_rifle] positioned ~ ~ ~ as @a[distance=...7,tag=!shooting_rifle,predicate=ttt:alive_player] run damage @s 5 minecraft:generic by @e[tag=shooting_rifle,limit=1,sort=nearest]
#* body
execute if entity @s[tag=shooting_rifle] positioned ~ ~-1 ~ as @a[distance=...7,tag=!shooting_rifle,predicate=ttt:alive_player] run damage @s 7 minecraft:generic by @e[tag=shooting_rifle,limit=1,sort=nearest]
#* headshot
execute if entity @s[tag=shooting_rifle] positioned ~ ~-1.6 ~ as @a[distance=...25,tag=!shooting_rifle,predicate=ttt:alive_player] run damage @s 14 minecraft:generic by @e[tag=shooting_rifle,limit=1,sort=nearest]

#* Break glass
execute positioned ~ ~ ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute positioned ~ ~-1 ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy

#* loop

#* kill bullet if hit block
execute unless predicate ttt:in_ray_passable_block run particle dust 0.475 0.475 0.475 1 ^ ^ ^.2 .04 .04 .04 0 20 force
execute unless predicate ttt:in_ray_passable_block run scoreboard players set @s rangeleft 0
#* kill bullet if over 300 blocks away from a player
execute unless entity @a[distance=..500,tag=!shooting] run scoreboard players set @s rangeleft 0

#! move execution positon forward as long as the block is passable and we have distance left
execute if predicate ttt:in_ray_passable_block if score @s rangeleft matches 1.. positioned ^ ^ ^.5 run function ttt:raycast/tp


