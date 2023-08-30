#* summon mp5 display
function ttt:weapons/types/summon_item_mp5

#* summon two ammo packs
#* "ground" item display makes them smaller
summon item_display ~-.2 ~ ~-.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_mp5"], CustomName: '{"text":"MP5 Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 3, ammo_mp5: 1b}}}
summon item_display ~.2 ~ ~.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_mp5"], CustomName: '{"text":"MP5 Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 3, ammo_mp5: 1b}}}