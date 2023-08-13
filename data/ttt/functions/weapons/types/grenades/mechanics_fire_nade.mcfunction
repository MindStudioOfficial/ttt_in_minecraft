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
execute at @e[tag=primed_fire,scores={grenadetime=60}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=80}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=100}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=120}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=140}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=160}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=180}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=200}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=220}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=240}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=260}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=280}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=300}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=320}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=340}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=360}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=380}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=400}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=420}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=440}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=460}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=480}] positioned ~ ~1.4 ~ run execute as @a[distance=..3] run damage @s 2 minecraft:in_fire

execute as @e[tag=primed_fire,scores={grenadetime=500..}] run kill @s