#* fire nade
#* kill last tracker
execute at @e[type=snowball,nbt={Item: {tag: {grenade_fire: 1b}}}] run kill @e[tag=fire_tracker,distance=..2]
#* summon falling nade if no tracker was killed because snowball broke
execute at @e[tag=fire_tracker] run summon armor_stand ~0.5 ~ ~-0.5 {Invisible: 1b, Tags: ["placeholder_fire"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1996}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
#* kill the tracker
kill @e[tag=fire_tracker]
#* summon a new tracker for all fire nade snowballs
execute at @e[type=snowball,nbt={Item: {tag: {grenade_fire: 1b}}}] run summon marker ~ ~ ~ {Tags: ["fire_tracker"]}
#* summon the fire itself were falling smoke hit the ground
execute at @e[tag=placeholder_fire,nbt={OnGround: 1b}] run summon armor_stand ~ ~-1.4 ~ {NoGravity: 1b, Invisible: 1b, Tags: ["primed_fire"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1996}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
#* kill the falling fire nade
kill @e[tag=placeholder_fire,nbt={OnGround: 1b}]

#* tick the grenade
execute as @e[tag=primed_fire] run scoreboard players add @s grenadetime 1
execute at @e[tag=primed_fire,scores={grenadetime=40}] run playsound minecraft:block.fire.ambient block @a ~ ~ ~ 1 1
execute at @e[tag=primed_fire,scores={grenadetime=40..}] run particle minecraft:flame ~-.5 ~1.6 ~.5 1.5 .2 1.5 0 100 force

    #* damage players in range every second
execute as @e[tag=primed_fire] at @s if score @s grenadetime matches 40.. run scoreboard players operation @s i = @s grenadetime
execute as @e[tag=primed_fire] at @s if score @s grenadetime matches 40.. run scoreboard players operation @s i %= .20 constants
execute as @e[tag=primed_fire] at @s if score @s grenadetime matches 40.. if score @s i matches 0 positioned ~ ~1 ~ as @a[distance=..3,predicate=ttt:alive_player] run damage @s 3 minecraft:in_fire at ~ ~ ~
execute as @e[tag=primed_fire] at @s if score @s grenadetime matches 40.. if score @s i matches 0 positioned ~ ~1 ~ as @a[distance=..3,predicate=ttt:alive_player] run scoreboard players set @s damage 3

execute as @a[scores={damage=1..}] at @s positioned ^ ^1 ^.5 run function ttt:weapons/damage_indicator_summon
execute as @a[scores={damage=1..}] run scoreboard players reset @s damage


execute as @e[tag=primed_fire,scores={grenadetime=500..}] run kill @s