scoreboard players set @a currentammo 0
scoreboard players set @a totalammo 0

#*rifle
execute as @a[nbt={SelectedItem: {tag: {rifle: 1b}}}] run scoreboard players operation @s currentammo = @s c_ammo_rifle
execute as @a[nbt={SelectedItem: {tag: {rifle: 1b}}}] run scoreboard players operation @s totalammo = @s t_ammo_rifle
#reload
execute as @a[scores={c_ammo_rifle=..0,t_ammo_rifle=1..},nbt={SelectedItem: {tag: {rifle: 1b}}}] run scoreboard players add @s reloaddelay 1
execute as @a[scores={c_ammo_rifle=..0,t_ammo_rifle=1..,reloaddelay=30..}] run function ttt:weapons/types/rifle_reload
execute as @a[scores={t_ammo_rifle=25..}] run scoreboard players set @s t_ammo_rifle 24


#*pistol
execute as @a[nbt={SelectedItem: {tag: {pistol: 1b}}}] run scoreboard players operation @s currentammo = @s c_ammo_pistol
execute as @a[nbt={SelectedItem: {tag: {pistol: 1b}}}] run scoreboard players operation @s totalammo = @s t_ammo_pistol
#reload
execute as @a[scores={c_ammo_pistol=..0,t_ammo_pistol=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] run scoreboard players add @s reloaddelay 1
execute as @a[scores={c_ammo_pistol=..0,t_ammo_pistol=1..,reloaddelay=10..}] run function ttt:weapons/types/pistol_reload
execute as @a[scores={t_ammo_pistol=22..}] run scoreboard players set @s t_ammo_pistol 21