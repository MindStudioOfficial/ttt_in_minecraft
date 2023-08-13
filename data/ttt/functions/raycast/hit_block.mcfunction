#* kill bullet if hit block
execute at @e[tag=ray] as @e[tag=ray] unless block ~ ~ ~ air run kill @s
#* kill bullet if over 192 blocks away from a player
execute at @e[tag=ray] as @e[tag=ray] unless entity @a[distance=..192] run kill @s
