#* teams -------------------------
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

team modify conf_innocent prefix [{"text":"Confirmed Dead ","color":"gray"},{"text":"Innocent ","color":"green"}]
team modify conf_traitor prefix [{"text":"Confirmed Dead ","color":"gray"},{"text":"Traitor ","color":"dark_red"}]
team modify conf_detective prefix [{"text":"Confirmed Dead ","color":"gray"},{"text":"Detective ","color":"blue"}]

team modify preparing friendlyFire false

#* gamerules ------------------------
gamerule keepInventory false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule commandBlockOutput false
gamerule announceAdvancements false

#* other ----------------------------
#create the sign block that holds the names of the killed players
execute at @e[tag=sign] run setblock ~ ~ ~ oak_sign

#* scoreboard -----------------------

#death and corpse
scoreboard objectives add tod deathCount
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add isBeingConfirmed dummy

#roundtime -----------------------
scoreboard objectives add roundtime dummy
scoreboard objectives add rtseconds dummy
scoreboard objectives add rtminutes dummy

scoreboard objectives add roundstage dummy
scoreboard players set stats roundstage 0

scoreboard objectives add rtzero dummy

scoreboard objectives add i dummy
scoreboard players set stats i 0

scoreboard objectives add constants dummy
scoreboard players set .60 constants 60
scoreboard players set .20 constants 20
scoreboard players set .10 constants 10

scoreboard objectives add paused dummy
scoreboard players set stats paused 0

#playercount-----------------------
scoreboard objectives add traitorcount dummy
scoreboard objectives add innocentcount dummy
scoreboard objectives add playercount dummy

#weapons --------------------------
scoreboard objectives add firecooldown dummy
scoreboard players set .rifle firecooldown 30
scoreboard players set .pistol firecooldown 10
scoreboard players set .mp5 firecooldown 2

scoreboard objectives add reloaddelay dummy
scoreboard players set .rifle reloaddelay 10
scoreboard players set .pistol reloaddelay 10
scoreboard players set .mp5 reloaddelay 10

scoreboard objectives add rangeleft dummy
scoreboard players set stats rangeleft 500

scoreboard objectives add damage dummy
scoreboard objectives add damage_indicator_life dummy
scoreboard objectives add damage_indicator_alpha dummy

#ammo -----------------------------

scoreboard objectives add ammo_loaded dummy
scoreboard objectives add ammo_mag dummy

scoreboard objectives add ammo_per_mag dummy
scoreboard players set .rifle ammo_per_mag 7
scoreboard players set .pistol ammo_per_mag 15
scoreboard players set .mp5 ammo_per_mag 25

scoreboard objectives add ammo_max_pickup dummy
scoreboard players set .rifle ammo_max_pickup 7
scoreboard players set .pistol ammo_max_pickup 15
scoreboard players set .mp5 ammo_max_pickup 25

scoreboard objectives add ammo_loaded_rifle dummy
scoreboard objectives add ammo_mag_rifle dummy

scoreboard objectives add ammo_loaded_pistol dummy
scoreboard objectives add ammo_mag_pistol dummy

scoreboard objectives add ammo_loaded_mp5 dummy
scoreboard objectives add ammo_mag_mp5 dummy

scoreboard objectives add x_10 dummy
scoreboard objectives add y_10 dummy
scoreboard objectives add z_10 dummy

scoreboard objectives add x_10_rounded dummy
scoreboard objectives add y_10_rounded dummy
scoreboard objectives add z_10_rounded dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

#shops ----------------------------
scoreboard objectives add shopping dummy

#grenades -------------------------
scoreboard objectives add grenadetime dummy
scoreboard objectives add throw minecraft.used:minecraft.snowball

#c4 --------------------------------
scoreboard objectives add c4time dummy
scoreboard objectives add c4seconds dummy

#radar -----------------------------
scoreboard objectives add radartime dummy

#swapper ---------------------------
scoreboard objectives add swappertime dummy

#points ----------------------------

scoreboard objectives add points dummy "Points"
scoreboard objectives add points_display dummy "Points"

scoreboard objectives setdisplay list points_display

#items -----------------------------

scoreboard objectives add itemage dummy

#teleporter ------------------------
scoreboard objectives add tp_cooldown dummy
scoreboard objectives add tp_count dummy
scoreboard objectives add tp_id dummy