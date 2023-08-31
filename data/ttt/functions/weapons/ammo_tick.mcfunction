scoreboard players set @a ammo_loaded 0
scoreboard players set @a ammo_mag 0

#* rifle
#* if laoded ammo empty tick up reload delay
execute as @a[predicate=ttt:alive_holding_rifle] if score @s ammo_loaded_rifle matches ..0 if score @s ammo_mag_rifle >= .rifle ammo_per_mag run scoreboard players add @s reloaddelay 1
#* if reload delay reached move ammo from mag to loaded
execute as @a[predicate=ttt:alive_holding_rifle] at @s if score @s reloaddelay matches 10 run playsound custom.scout_clipout player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_rifle] at @s if score @s reloaddelay matches 40 run playsound custom.scout_clipin player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_rifle] if score @s reloaddelay >= .rifle reloaddelay run function ttt:weapons/types/reload_rifle

#* copy to display score
execute as @a[predicate=ttt:alive_holding_rifle] run scoreboard players operation @s ammo_loaded = @s ammo_loaded_rifle
execute as @a[predicate=ttt:alive_holding_rifle] run scoreboard players operation @s ammo_mag = @s ammo_mag_rifle


#* pistol
#* if loaded ammo empty tick up reload delay
execute as @a[predicate=ttt:alive_holding_pistol] if score @s ammo_loaded_pistol matches ..0 if score @s ammo_mag_pistol >= .pistol ammo_per_mag run scoreboard players add @s reloaddelay 1
#* if reload delay reached move ammo from mag to loaded
execute as @a[predicate=ttt:alive_holding_pistol] at @s if score @s reloaddelay matches 2 run playsound custom.fiveseven_clipout player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_pistol] at @s if score @s reloaddelay matches 10 run playsound custom.fiveseven_clipin player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_pistol] if score @s reloaddelay >= .pistol reloaddelay run function ttt:weapons/types/reload_pistol

#* copy to display score
execute as @a[predicate=ttt:alive_holding_pistol] run scoreboard players operation @s ammo_loaded = @s ammo_loaded_pistol
execute as @a[predicate=ttt:alive_holding_pistol] run scoreboard players operation @s ammo_mag = @s ammo_mag_pistol


#* mp5
#* if loaded ammo empty tick up reload delay
execute as @a[predicate=ttt:alive_holding_mp5] if score @s ammo_loaded_mp5 matches ..0 if score @s ammo_mag_mp5 >= .mp5 ammo_per_mag run scoreboard players add @s reloaddelay 1
#* if reload delay reached move ammo from mag to loaded
execute as @a[predicate=ttt:alive_holding_mp5] at @s if score @s reloaddelay matches 2 run playsound custom.mac10_clipout player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_mp5] at @s if score @s reloaddelay matches 10 run playsound custom.mac10_clipin player @a ~ ~ ~ 1 1
execute as @a[predicate=ttt:alive_holding_mp5] if score @s reloaddelay >= .mp5 reloaddelay run function ttt:weapons/types/reload_mp5

#* copy to display score
execute as @a[predicate=ttt:alive_holding_mp5] run scoreboard players operation @s ammo_loaded = @s ammo_loaded_mp5
execute as @a[predicate=ttt:alive_holding_mp5] run scoreboard players operation @s ammo_mag = @s ammo_mag_mp5