#* check for sneaking players close to dead_name_display entities
#? sneak score is automatically increased by the game
execute as @a[scores={sneak=1..},gamemode=!spectator] at @s unless entity @e[tag=dead_name_display,tag=!confirmed,distance=..2] run scoreboard players set @s sneak 0

execute as @a[scores={sneak=10..},gamemode=!spectator] at @s run function ttt:death/confirm

