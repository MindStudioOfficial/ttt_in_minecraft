playsound entity.generic.explode block @a ~ ~ ~ 1 1 .1
particle explosion ~ ~ ~ 1 1 1 1 100 force
execute as @a[distance=..2,predicate=ttt:alive_player] run scoreboard players set @s damage 25
execute as @a[distance=..2,predicate=ttt:alive_player] run damage @s 25 generic
execute as @a[distance=2..5,predicate=ttt:alive_player] run scoreboard players set @s damage 15
execute as @a[distance=2..5,predicate=ttt:alive_player] run damage @s 15 generic
execute as @a[distance=5..10,predicate=ttt:alive_player] run scoreboard players set @s damage 5
execute as @a[distance=5..10,predicate=ttt:alive_player] run damage @s 5 generic

execute as @a[scores={damage=1..}] at @s positioned ^ ^-.2 ^-.5 run function ttt:weapons/damage_indicator_summon

#* ignite other explosives in area
execute as @e[tag=exp_barrel,distance=..3] at @s run function ttt:other/explosive_barrel/exp_start_explode

kill @e[tag=exp_display,sort=nearest,limit=1]
kill @e[tag=exp_interaction,sort=nearest,limit=1]
kill @s