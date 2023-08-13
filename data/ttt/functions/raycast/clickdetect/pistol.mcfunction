#summon Cursor armorstand when rightclicking carrot on a stick
execute at @a[scores={click=1..,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] run summon marker ^ ^ ^2 {Tags: ["ray_pistol", "ray"]}
#make it face towards the player
execute at @p[scores={click=1,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] at @e[tag=ray_pistol,limit=1,sort=nearest] run tp @e[tag=ray_pistol,limit=1,sort=nearest] ~ ~ ~ facing entity @p
#teleport to eye level
execute at @p[scores={click=1,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] at @e[tag=ray_pistol,limit=1,sort=nearest] run tp @e[tag=ray_pistol,limit=1,sort=nearest] ~ ~1.5 ~
#run tp function to cast the ray
execute at @p[scores={click=1,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] at @e[tag=ray_pistol,limit=1,sort=nearest] as @e[tag=ray_pistol,limit=1,sort=nearest] if block ~ ~ ~ air run function ttt:raycast/tp

#SOUND:
execute at @a[scores={click=1,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] run playsound custom.fiveseven-1 player @a ~ ~ ~ 1 1

#remove 1 bullet from magazine
execute as @a[scores={click=1,c_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] run scoreboard players remove @s c_ammo_pistol 1


