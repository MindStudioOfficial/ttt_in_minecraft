execute as @e[tag=damage_indicator] run scoreboard players add @s damage_indicator_life 1
execute as @e[tag=damage_indicator] run scoreboard players remove @s damage_indicator_alpha 6

execute as @e[tag=damage_indicator] if score @s damage_indicator_life matches ..1 run scoreboard players set @s damage_indicator_alpha 255
execute as @e[tag=damage_indicator] if score @s damage_indicator_life matches 20.. run kill @s

execute as @e[tag=damage_indicator] store result entity @s text_opacity byte 1 run scoreboard players get @s damage_indicator_alpha
execute as @e[tag=damage_indicator] at @s run tp @s ~ ~.05 ~
