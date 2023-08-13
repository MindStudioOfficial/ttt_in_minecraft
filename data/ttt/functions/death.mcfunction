execute as @a[scores={tod=1},team=innocent] run team join conf_innocent
execute as @a[scores={tod=1},team=traitor] run team join conf_traitor
execute as @a[scores={tod=1},team=detective] run team join conf_detective

#* store name in sign
#execute at @e[tag=sign] if entity @a[scores={tod=1}] run data modify block ~ ~ ~ Text1 set value '{"selector":"@a[scores={tod=1}]","color":"gray"}'
execute at @e[tag=sign] if entity @a[scores={tod=1}] run data modify block ~ ~ ~ front_text.messages insert 0 value '{"selector":"@a[scores={tod=1}]"}'

execute at @e[tag=sign] if entity @a[scores={tod=1},team=innocent] run data modify block ~ ~ ~ front_text.messages insert 1 value '{"text":"conf_innocent"}'
execute at @e[tag=sign] if entity @a[scores={tod=1},team=traitor] run data modify block ~ ~ ~ front_text.messages insert 1 value '{"text":"conf_traitor"}'
execute at @e[tag=sign] if entity @a[scores={tod=1},team=detective] run data modify block ~ ~ ~ front_text.messages insert 1 value '{"text":"conf_detective"}'

#* summon corpse
execute at @a[scores={tod=1}] run summon armor_stand ~ ~-1.25 ~ {DisabledSlots: 4144959, CustomNameVisible: 0b, Tags: ["head", "unnamed", "corpse"], HandItems: [{id: "minecraft:red_tulip", Count: 1b}, {}], ArmorItems: [{}, {}, {id: "minecraft:leather_chestplate", Count: 1b}, {id: "minecraft:zombie_head", Count: 1b}], Invisible: 0b, NoGravity: 1b, NoBasePlate: 1b, ShowArms: 1b, Pose: {Body: [278f, 0f, 0f], Head: [317f, 0f, 0f], LeftArm: [270f, 0f, 0f], RightArm: [270f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}
execute at @e[tag=sign] run data modify entity @e[tag=head,tag=unnamed,limit=1,sort=nearest] CustomName set from block ~ ~ ~ front_text.messages[0]
tag @e[tag=head,tag=unnamed] remove unnamed
#execute at @e[tag=sign] run data modify entity @e[tag=head,limit=1,sort=nearest] Team set from block ~ ~ ~ Text2
execute at @a[scores={tod=1}] run summon armor_stand ~ ~-.625 ~.25 {DisabledSlots: 4144959, Tags: ["feet", "corpse"], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b}, {}, {}, {}], Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, Pose: {Body: [180f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}
#execute at @a[scores={tod=1}] run summon armor_stand ~ ~-.625 ~.75 {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{},{}],Invisible:1b,NoGravity:1b,NoBasePlate:1b,Pose:{Body:[180f,0f,0f],LeftLeg:[270f,0f,0f],RightLeg:[270f,0f,0f]}}

#* make dead player join unconfirmed team
execute as @a[scores={tod=1},team=conf_innocent] run team join innocent
execute as @a[scores={tod=1},team=conf_traitor] run team join traitor
execute as @a[scores={tod=1},team=conf_detective] run team join detective

execute as @a[scores={tod=1}] run gamemode spectator @s
execute as @a[scores={tod=1}] run scoreboard players set @s tod 0
