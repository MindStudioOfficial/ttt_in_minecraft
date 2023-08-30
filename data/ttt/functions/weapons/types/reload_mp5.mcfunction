#* add one mag worth of ammo to the loaded ammo
scoreboard players operation @s ammo_loaded_mp5 += .mp5 ammo_per_mag
#* remove one mag worth of ammo from the total ammo
scoreboard players operation @s ammo_mag_mp5 -= .mp5 ammo_per_mag

scoreboard players set @s reloaddelay 0
execute as @s at @s run playsound custom.mac10_slideback player @a ~ ~ ~ 1 1
