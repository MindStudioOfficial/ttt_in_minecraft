#* play grenade pinpull sound
execute as @a[scores={throw=1..}] at @s run playsound custom.pinpull player @a ~ ~ ~ 1 1
execute as @a[scores={throw=1..}] run scoreboard players set @s throw 0

#* tick nade physics
function ttt:weapons/types/grenades/mechanics_smoke_nade
function ttt:weapons/types/grenades/mechanics_fire_nade


