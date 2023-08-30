advancement revoke @s only ttt:click_rifle

execute if score @s ammo_loaded_rifle matches 1.. if score @s firecooldown matches ..0 run function ttt:raycast/cast_rifle
execute if score @s ammo_loaded_rifle matches ..0 if score @s firecooldown matches ..0 run playsound custom.clipempty_rifle player @a ~ ~ ~ 1 1
execute if score @s ammo_loaded_rifle matches ..0 if score @s firecooldown matches ..0 run scoreboard players operation @s firecooldown = .rifle firecooldown