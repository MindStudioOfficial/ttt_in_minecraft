#* temporarily move to confirmed
execute if entity @s[team=innocent] run team join conf_innocent @s
execute if entity @s[team=traitor] run team join conf_traitor @s
execute if entity @s[team=detective] run team join conf_detective @s

#* summon text display with dead player's name but hide the text until confirmed
tag @s add dead
summon text_display ~ ~1 ~ {billboard: "center", line_width: 90, text_opacity: 4b, shadow: 0b, see_through: 0b, alignment: "center", Tags: ["dead_name_display", "corpse"], text: '{"selector":"@a[tag=dead]"}', background: 0}
tag @s remove dead

#* summon corpse
summon armor_stand ~ ~-1.25 ~ {DisabledSlots: 4144959, CustomNameVisible: 0b, Tags: ["head", "corpse", "hasNoUUID"], ArmorItems: [{}, {}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {display: {color: 6052956}}}, {id: "minecraft:skeleton_skull", Count: 1b}], Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, ShowArms: 1b, Pose: {Body: [278f, 0f, 0f], Head: [270f, 0f, 0f], LeftArm: [270f, 0f, 0f], RightArm: [270f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}

summon armor_stand ~ ~-.625 ~.25 {DisabledSlots: 4144959, Tags: ["feet", "corpse"], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {display: {color: 6052956}}}, {}, {}, {}], Invisible: 1b, Marker: 1b, NoGravity: 1b, NoBasePlate: 1b, Pose: {Body: [180f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}

data modify entity @e[tag=hasNoUUID,limit=1,sort=nearest] ArmorItems[3].tag.origin set from entity @s UUID
execute as @e[tag=hasNoUUID] run tag @s remove hasNoUUID

#* move back to unconfirmed to hide in player list
execute if entity @s[team=conf_innocent] run team join innocent @s
execute if entity @s[team=conf_traitor] run team join traitor @s
execute if entity @s[team=conf_detective] run team join detective @s

function ttt:death/get_attacker

gamemode spectator @s

scoreboard players set @s tod 0