advancement revoke @s only ttt:click_mp5

#* init firecooldown if not initialized
execute unless score @s firecooldown matches 0.. run scoreboard players set @s firecooldown 0

#* fire if cooldown is 0 and ammo left
execute if score @s ammo_loaded_mp5 matches 1.. if score @s firecooldown matches ..0 run function ttt:raycast/cast_mp5

#* play sound if no ammo left
execute if score @s ammo_loaded_mp5 matches ..0 if score @s firecooldown matches ..0 run playsound custom.clipempty_rifle player @a ~ ~ ~ 1 1

#* reset cooldown if no ammo left
execute if score @s ammo_loaded_mp5 matches ..0 if score @s firecooldown matches ..0 run scoreboard players operation @s firecooldown = .mp5 firecooldown