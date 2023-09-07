#* for each tp_id up to 12 spawn different color particle using particle dust <R float> <G float> <B float> 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=0}] at @s run particle dust 1 0 0 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=1}] at @s run particle dust 0 1 0 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=2}] at @s run particle dust 0 0 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=3}] at @s run particle dust 1 1 0 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=4}] at @s run particle dust 1 0 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=5}] at @s run particle dust 0 1 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=6}] at @s run particle dust 1 1 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=7}] at @s run particle dust 1 .5 0 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=8}] at @s run particle dust 1 0 .5 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=9}] at @s run particle dust .5 1 0 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=10}] at @s run particle dust 0 .5 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
execute as @e[tag=tp,tag=linked,scores={tp_id=11}] at @s run particle dust .5 0 1 1 ~ ~1 ~ .1 .25 .1 1 10 force
