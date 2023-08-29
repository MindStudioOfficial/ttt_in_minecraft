execute as @a[scores={swappertime=1..}] run scoreboard players remove @s swappertime 1
execute as @a[scores={swappertime=..0}] at @s run function ttt:roles/traitor/swapper_swap

execute as @a[scores={swappertime=..0}] run scoreboard players reset @s swappertime


