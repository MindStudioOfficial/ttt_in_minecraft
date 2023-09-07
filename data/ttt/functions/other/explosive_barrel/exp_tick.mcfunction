#* tick explode
execute as @e[tag=exp_barrel,scores={grenadetime=1..}] run scoreboard players remove @s grenadetime 1
execute as @e[tag=exp_barrel,scores={grenadetime=0}] at @s run function ttt:other/explosive_barrel/exp_explode