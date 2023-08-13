#* summon rifle display
function ttt:weapons/types/summon_item_rifle

#* summon two ammo packs
#* "ground" item display makes them smaller
summon item_display ~-.2 ~ ~-.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_rifle"], CustomName: '{"text":"Rifle Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 1, ammo_rifle: 1b}}}
summon item_display ~.2 ~ ~.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_rifle"], CustomName: '{"text":"Rifle Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 1, ammo_rifle: 1b}}}