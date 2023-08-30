#* pickup rifle
execute as @e[tag=rifle] at @s as @p[distance=..1,predicate=ttt:alive_player,predicate=!ttt:alive_has_rifle] run function ttt:weapons/types/giveandkill_rifle
#* pickup rifle ammo
execute as @e[tag=ammo_rifle] at @s as @p[distance=..1,predicate=ttt:alive_player] if score @s ammo_mag_rifle <= .rifle ammo_max_pickup run function ttt:weapons/types/giveandkill_ammo_rifle


#* pickup pistol
execute as @e[tag=pistol] at @s as @p[distance=..1,predicate=ttt:alive_player,predicate=!ttt:alive_has_pistol] run function ttt:weapons/types/giveandkill_pistol
#* pickup pistol ammo
execute as @e[tag=ammo_pistol] at @s as @p[distance=..1,predicate=ttt:alive_player] if score @s ammo_mag_pistol <= .pistol ammo_max_pickup run function ttt:weapons/types/giveandkill_ammo_pistol

#* grenades
#* smoke nadede
execute as @e[tag=grenade_smoke] at @s if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{tag: {grenade_smoke: 1b}}]}] run function ttt:weapons/types/grenades/giveandkill_smoke
#* fire nadede
execute as @e[tag=grenade_fire] at @s positioned ~ ~ ~ if entity @a[gamemode=adventure,distance=..1] unless entity @a[distance=..1,nbt={Inventory: [{tag: {grenade_fire: 1b}}]}] run function ttt:weapons/types/grenades/giveandkill_fire
