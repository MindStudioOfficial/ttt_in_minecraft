#* smoke nade
#* kill last tracker
execute at @e[type=snowball,nbt={Item: {tag: {grenade_smoke: 1b}}}] run kill @e[tag=smoke_tracker,distance=..2]
#* summon falling nade if no tracker was killed because snowball broke
execute at @e[tag=smoke_tracker] run summon armor_stand ~0.5 ~ ~-0.5 {Invisible: 1b, Tags: ["placeholder_smoke"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1738}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
#* kill the tracker
kill @e[tag=smoke_tracker]
#* summon a new tracker for all smoke nade snowballs
execute at @e[type=snowball,nbt={Item: {tag: {grenade_smoke: 1b}}}] run summon marker ~ ~ ~ {Tags: ["smoke_tracker"]}
#* summon the smoke itself were falling smoke hit the ground
execute at @e[tag=placeholder_smoke,nbt={OnGround: 1b}] run summon armor_stand ~ ~-1.4 ~ {NoGravity: 1b, Invisible: 1b, Tags: ["primed_smoke"], ShowArms: 1b, HandItems: [{id: "minecraft:snowball", Count: 1b, tag: {CustomModelData: 1738}}, {}], Pose: {RightArm: [270f, 0f, 0f]}}
#* kill the falling smoke
kill @e[tag=placeholder_smoke,nbt={OnGround: 1b}]

#* tick the grenade
execute as @e[tag=primed_smoke] run scoreboard players add @s grenadetime 1
execute at @e[tag=primed_smoke,scores={grenadetime=100}] run playsound custom.sg_explode block @a ~ ~ ~ 1 1

#* extiguish fire nade
execute at @e[tag=primed_smoke,scores={grenadetime=100}] if entity @e[tag=primed_fire,distance=..3] run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1
execute at @e[tag=primed_smoke,scores={grenadetime=100}] if entity @e[tag=primed_fire,distance=..3] run kill @e[tag=primed_fire,distance=..3]

#* smoke particle
execute at @e[tag=primed_smoke,scores={grenadetime=100..}] run particle minecraft:squid_ink ~ ~1.9 ~-.5 1.5 1.5 1.5 0 500 force
execute as @e[tag=primed_smoke,scores={grenadetime=500..}] run kill @s