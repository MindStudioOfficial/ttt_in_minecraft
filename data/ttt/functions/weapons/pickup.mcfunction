#* pickup rifle
execute as @e[tag=rifle] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{id: "minecraft:carrot_on_a_stick", tag: {rifle: 1b}}]}] run function ttt:weapons/types/giveandkill_rifle
#* pickup rifle ammo
execute as @e[tag=ammo_rifle] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1,scores={t_ammo_rifle=..12}] run function ttt:weapons/types/giveandkill_ammo_rifle


#* pickup pistol
execute as @e[tag=pistol] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{id: "minecraft:carrot_on_a_stick", tag: {pistol: 1b}}]}] run function ttt:weapons/types/giveandkill_pistol
#* pickup pistol ammo
execute as @e[tag=ammo_pistol] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1,scores={t_ammo_pistol=..15}] run function ttt:weapons/types/giveandkill_ammo_pistol


#* grenades
#* smoke nade
execute as @e[tag=grenade_smoke] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{tag: {grenade_smoke: 1b}}]}] run function ttt:weapons/types/grenades/giveandkill_smoke
#* fire nade
execute as @e[tag=grenade_fire] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{tag: {grenade_fire: 1b}}]}] run function ttt:weapons/types/grenades/giveandkill_fire
