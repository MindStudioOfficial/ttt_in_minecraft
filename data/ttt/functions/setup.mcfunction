#teams -------------------------
team add traitor "Traitor"
team add innocent "Innocent"
team add detective "Detective"
team add conf_traitor "Traitor"
team add conf_innocent "Innocent"
team add conf_detective "Detective"
team add preparing "Preparing"
team add roundover "Round Over"
team add admin

team modify innocent nametagVisibility never
team modify detective nametagVisibility always
team modify preparing nametagVisibility never
team modify traitor nametagVisibility hideForOtherTeams

team modify detective color blue
team modify conf_detective color blue
team modify conf_innocent color green
team modify conf_traitor color dark_red

team modify conf_innocent prefix {"text":"Confirmed Dead ","color":"gray"}
team modify conf_traitor prefix {"text":"Confirmed Dead ","color":"gray"}
team modify conf_detective prefix {"text":"Confirmed Dead ","color":"gray"}

team modify preparing friendlyFire false

#death and corpse
scoreboard objectives add tod deathCount
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

#roundtime -----------------------
scoreboard objectives add roundtime dummy
scoreboard objectives add rtseconds dummy
scoreboard objectives add rtminutes dummy
scoreboard objectives add roundstage dummy
scoreboard objectives add rtzero dummy

scoreboard objectives add i dummy
scoreboard objectives add 60 dummy

#playercount-----------------------
scoreboard objectives add traitorcount dummy
scoreboard objectives add innocentcount dummy
scoreboard objectives add playercount dummy

#other ----------------------------
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add value dummy

#shops ----------------------------
scoreboard objectives add shopping dummy

#grenades -------------------------
scoreboard objectives add grenadetime dummy
scoreboard objectives add throw minecraft.used:minecraft.snowball

#gamerules ------------------------
gamerule keepInventory false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule commandBlockOutput false

#set default scores. Placeholder sign required.
execute at @e[tag=sign] run setblock ~ ~ ~ oak_sign
execute as @e[tag=sign] run scoreboard players set @s roundstage -1
execute as @e[tag=sign] run scoreboard players set @s i 0
execute as @e[tag=sign] run scoreboard players set @s 60 60

#Ammo

scoreboard objectives add currentammo dummy
scoreboard objectives add totalammo dummy
scoreboard objectives add reloaddelay dummy

#* c_ = current ammo (in weapon)
#* t_ = total ammo  (in mag)
scoreboard objectives add c_ammo_rifle dummy
scoreboard objectives add t_ammo_rifle dummy

scoreboard objectives add c_ammo_pistol dummy
scoreboard objectives add t_ammo_pistol dummy