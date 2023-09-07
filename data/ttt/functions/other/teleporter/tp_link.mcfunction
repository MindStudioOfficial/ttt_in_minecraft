scoreboard players set stats tp_id 0

#* if there is an entity with tp tag that has the same score for tp_id as stats increase the tp_id score for stats by 1

function ttt:other/teleporter/tp_find_new_id

#? free id is now stored in stats tp_id

execute as @e[tag=tp,tag=!linked,limit=2] run scoreboard players operation @s tp_id = stats tp_id
execute as @e[tag=tp,tag=!linked,limit=2] run tag @s add linked