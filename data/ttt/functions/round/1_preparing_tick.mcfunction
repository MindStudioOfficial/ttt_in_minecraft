#* rejoin new players
team join roundover @a[team=]
#* rejoin dead players
team join roundover @a[gamemode=spectator]

#* respawn players at spawnpoint, if no already spawned player is close
execute as @e[tag=spawnpoint,sort=random] at @s unless entity @a[predicate=ttt:alive_player,distance=..1] if entity @a[team=roundover] run function ttt:round/player_respawn
#* revive respawned players 
gamemode adventure @a[team=preparing]