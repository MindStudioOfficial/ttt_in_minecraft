#? executed as/at every linked teleporter

#* store the current teleporters id
scoreboard players operation stats tp_id = @s tp_id

execute as @e[tag=tp,predicate=ttt:tp_with_same_id_as_stats,distance=1..,limit=1] run function ttt:other/teleporter/tp_teleport
