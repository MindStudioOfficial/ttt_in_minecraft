#* add one mag worth of ammo to the loaded ammo
scoreboard players operation @s ammo_loaded_pistol += .pistol ammo_per_mag
#* remove one mag worth of ammo from the total ammo
scoreboard players operation @s ammo_mag_pistol -= .pistol ammo_per_mag

scoreboard players set @s reloaddelay 0
execute as @s at @s run playsound custom.fiveseven_slidepull player @a ~ ~ ~ 1 1
