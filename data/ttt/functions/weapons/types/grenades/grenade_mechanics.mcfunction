#* smoke nade
execute at @e[type=snowball,nbt={Item: {tag: {grenade_smoke: 1b}}}] run kill @e[tag=smoke_tracker,distance=..2]
execute at @e[tag=smoke_tracker] run summon armor_stand ~0.5 ~ ~-0.5 {Invisible: 1b, Tags: ["placeholder_smoke"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1738}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
kill @e[tag=smoke_tracker]
execute at @e[type=snowball,nbt={Item: {tag: {grenade_smoke: 1b}}}] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Marker: 1b, Invisible: 1b, Tags: ["smoke_tracker"]}

execute at @e[tag=placeholder_smoke,nbt={OnGround: 1b}] run summon armor_stand ~ ~-1.4 ~ {NoGravity: 1b, Invisible: 1b, Tags: ["primed_smoke"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1738}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
kill @e[tag=placeholder_smoke,nbt={OnGround: 1b}]

execute as @e[tag=primed_smoke] run scoreboard players add @s grenadetime 1
#execute at @e[tag=primed_smoke,scores={grenadetime=..100}] run particle minecraft:flame ~-.5 ~1.6 ~.5 .05 .2 .05 0 1 force
execute at @e[tag=primed_smoke,scores={grenadetime=100..}] run particle minecraft:squid_ink ~ ~1.9 ~-.5 1.5 1.5 1.5 0 500 force
#execute at @e[tag=primed_smoke,scores={grenadetime=100..}] run particle dust 1 0 0 1 ~ ~1.9 ~-.5 1 1 1 0 200 force
#execute at @e[tag=primed_smoke,scores={grenadetime=100..}] positioned ~ ~1.4 ~ run effect give @a[distance=..2] minecraft:blindness 1 1 true
execute as @e[tag=primed_smoke,scores={grenadetime=500..}] run kill @s

#* fire nade
execute at @e[type=snowball,nbt={Item: {tag: {grenade_fire: 1b}}}] run kill @e[tag=fire_tracker,distance=..2]
execute at @e[tag=fire_tracker] run summon armor_stand ~0.5 ~ ~-0.5 {Invisible: 1b, Tags: ["placeholder_fire"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1996}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
kill @e[tag=fire_tracker]
execute at @e[type=snowball,nbt={Item: {tag: {grenade_fire: 1b}}}] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Marker: 1b, Invisible: 1b, Tags: ["fire_tracker"]}

execute at @e[tag=placeholder_fire,nbt={OnGround: 1b}] run summon armor_stand ~ ~-1.4 ~ {NoGravity: 1b, Invisible: 1b, Tags: ["primed_fire"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1996}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
kill @e[tag=placeholder_fire,nbt={OnGround: 1b}]

# count up grenade life time
execute as @e[tag=primed_fire] run scoreboard players add @s grenadetime 1
#execute at @e[tag=primed_fire,scores={grenadetime=..100}] run particle minecraft:flame ~-.5 ~1.6 ~.5 .05 .2 .05 0 1 force
execute at @e[tag=primed_fire,scores={grenadetime=100..}] run particle minecraft:flame ~-.5 ~1.6 ~.5 1.5 .2 1.5 0 100 force
#execute at @e[tag=primed_fire,scores={grenadetime=100..}] positioned ~ ~1.4 ~ run effect give @a[distance=..2] minecraft:wither 1 1 true

# damage players in range every second
execute at @e[tag=primed_fire,scores={grenadetime=100}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=120}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=140}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=160}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=180}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=200}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=220}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=240}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=260}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=280}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=300}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=320}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=340}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=360}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=380}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=400}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=420}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=440}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=460}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire
execute at @e[tag=primed_fire,scores={grenadetime=480}] positioned ~ ~1.4 ~ run execute as @a[distance=..2] run damage @s 2 minecraft:in_fire

execute as @e[tag=primed_fire,scores={grenadetime=500..}] run kill @s
