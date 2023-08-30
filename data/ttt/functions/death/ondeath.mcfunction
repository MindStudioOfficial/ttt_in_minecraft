#* temporarily move to confirmed
execute if entity @s[team=innocent] run team join conf_innocent @s
execute if entity @s[team=traitor] run team join conf_traitor @s
execute if entity @s[team=detective] run team join conf_detective @s

#* summon corpse
summon armor_stand ~ ~-1.25 ~ {DisabledSlots: 4144959, CustomNameVisible: 0b, Tags: ["head", "unnamed", "corpse"], HandItems: [{id: "minecraft:red_tulip", Count: 1b}, {}], ArmorItems: [{}, {}, {id: "minecraft:leather_chestplate", Count: 1b}, {id: "minecraft:skeleton_skull", Count: 1b}], Invisible: 0b, NoGravity: 1b, NoBasePlate: 1b, ShowArms: 1b, Pose: {Body: [278f, 0f, 0f], Head: [317f, 0f, 0f], LeftArm: [270f, 0f, 0f], RightArm: [270f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}

summon armor_stand ~ ~-.625 ~.25 {DisabledSlots: 4144959, Tags: ["feet", "corpse"], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b}, {}, {}, {}], Invisible: 1b, NoGravity: 1b, NoBasePlate: 1b, Pose: {Body: [180f, 0f, 0f], LeftLeg: [270f, 0f, 0f], RightLeg: [270f, 0f, 0f]}}

#* copy name to corpse with unnamed tag from sign 
execute at @e[tag=sign] run data modify entity @e[tag=head,tag=unnamed,limit=1,sort=nearest] CustomName set from block ~ ~ ~ front_text.messages[0]

tag @e[tag=head,tag=unnamed] remove unnamed

#* move back to unconfirmed to hide in player list
execute if entity @s[team=conf_innocent] run team join innocent @s
execute if entity @s[team=conf_traitor] run team join traitor @s
execute if entity @s[team=conf_detective] run team join detective @s

function ttt:death/get_attacker

gamemode spectator @s

scoreboard players set @s tod 0