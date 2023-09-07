#* count unlinked
execute store result score stats tp_count if entity @e[tag=tp,tag=!linked]

execute if score stats tp_count matches 2.. run function ttt:other/teleporter/tp_link

execute if entity @a[predicate=ttt:admin_holding_spawner] run function ttt:other/teleporter/tp_highlight

execute as @a at @s unless score @s tp_cooldown matches ..0 run scoreboard players remove @s tp_cooldown 1

execute as @e[tag=tp,tag=linked] at @s if entity @a[distance=..1] run function ttt:other/teleporter/tp_tptick