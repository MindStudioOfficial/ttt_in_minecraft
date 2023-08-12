#* summon rifle display
#summon armor_stand ~.1 ~-1.40 ~.3 {Tags:["rifle"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,rifle:1b}}],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[270f],Pose:{RightArm:[225f,0f,90f]},DisabledSlots:4144959}
summon item_display ~ ~ ~ {glow_color_override: 0b, item_display: "fixed", Rotation: [0f, 90f], Tags: ["rifle"], CustomName: '{"text":"Rifle Display","color":"gold"}', item: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 1, rifle: 1b}}}

#* summon two ammo packs
#summon armor_stand ~ ~-1.9 ~-.4 {Tags: ["ammo_rifle"], HandItems: [{id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_rifle: 1b}}], Invisible: 1b, Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, ShowArms: 1b, Rotation: [270f], Pose: {RightArm: [180f, 0f, 0f]}, DisabledSlots: 4144959}
#summon armor_stand ~.3 ~-1.9 ~-.7 {Tags: ["ammo_rifle"], HandItems: [{id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_rifle: 1b}}], Invisible: 1b, Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, ShowArms: 1b, Rotation: [270f], Pose: {RightArm: [180f, 0f, 0f]}, DisabledSlots: 4144959}
    #* "ground" item display makes them smaller
summon item_display ~-.2 ~ ~-.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_rifle"], CustomName: '{"text":"Rifle Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_rifle: 1b}}}
summon item_display ~.2 ~ ~.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_rifle"], CustomName: '{"text":"Rifle Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_rifle: 1b}}}