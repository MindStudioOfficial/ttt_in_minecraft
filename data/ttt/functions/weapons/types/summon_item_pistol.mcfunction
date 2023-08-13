#* summon pistol display
summon item_display ~ ~ ~ {glow_color_override: 0b, item_display: "fixed", Rotation: [0f, 90f], Tags: ["pistol"], CustomName: '{"text":"Pistol Display","color":"gold"}', item: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 2, pistol: 1b}}}

#* summon two ammo packs
#* "ground" item display makes them smaller
summon item_display ~-.2 ~ ~-.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_pistol"], CustomName: '{"text":"Pistol Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_pistol: 1b}}}
summon item_display ~.2 ~ ~.2 {glow_color_override: 0b, item_display: "ground", Rotation: [0f, 90f], Tags: ["ammo_pistol"], CustomName: '{"text":"Pistol Ammo Display","color":"gold"}', item: {id: "minecraft:carrot", Count: 1b, tag: {CustomModelData: 2, ammo_pistol: 1b}}}