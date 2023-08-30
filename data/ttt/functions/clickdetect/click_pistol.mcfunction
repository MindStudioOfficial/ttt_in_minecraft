advancement revoke @s only ttt:click_pistol

#* init firecooldown if not initialized
execute unless score @s firecooldown matches 0.. run scoreboard players set @s firecooldown 0

#* fire if cooldown is 0 and ammo left
execute if score @s ammo_loaded_pistol matches 1.. if score @s firecooldown matches ..0 run function ttt:raycast/cast_pistol

#* play sound if no ammo left
execute if score @s ammo_loaded_pistol matches ..0 if score @s firecooldown matches ..0 run playsound custom.clipempty_pistol player @a ~ ~ ~ 1 1

#* reset cooldown if no ammo left
execute if score @s ammo_loaded_pistol matches ..0 if score @s firecooldown matches ..0 run scoreboard players operation @s firecooldown = .pistol firecooldown