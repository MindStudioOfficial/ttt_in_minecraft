playsound entity.generic.explode player @a ~ ~ ~ 1 1 .1
particle explosion ~ ~ ~ 2 2 2 1 100 force
execute at @a[distance=0..10] run damage @p 100 generic
execute at @a[distance=10..20] run damage @p 18 generic
execute at @a[distance=20..40] run damage @p 5 generic

#* ignite other explosives in area
execute as @e[tag=exp_barrel,distance=..3] at @s run function ttt:other/explosive_barrel/exp_start_explode

kill @s