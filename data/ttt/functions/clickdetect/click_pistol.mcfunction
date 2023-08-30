advancement revoke @s only ttt:click_pistol

execute if score @s ammo_loaded_pistol matches 1.. if score @s firecooldown matches ..0 run function ttt:raycast/cast_pistol
execute if score @s ammo_loaded_pistol matches ..0 if score @s firecooldown matches ..0 run playsound custom.clipempty_pistol player @a ~ ~ ~ 1 1
execute if score @s ammo_loaded_pistol matches ..0 if score @s firecooldown matches ..0 run scoreboard players operation @s firecooldown = .pistol firecooldown