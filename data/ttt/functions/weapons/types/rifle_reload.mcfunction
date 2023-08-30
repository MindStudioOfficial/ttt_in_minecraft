#* add one mag worth of ammo to the loaded ammo
scoreboard players operation @s ammo_loaded_rifle += .rifle ammo_per_mag
#* remove one mag worth of ammo from the total ammo
scoreboard players operation @s ammo_mag_rifle -= .rifle ammo_per_mag

scoreboard players set @s reloaddelay 0
execute as @s at @s run playsound custom.scout_bolt player @a ~ ~ ~ 1 1
