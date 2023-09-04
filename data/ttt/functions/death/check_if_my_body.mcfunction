#* clear everything
scoreboard players reset @s isBeingConfirmed
data remove storage temp dead_player_uuid

#* copy the dead player's uuid to temp storage
data modify storage temp dead_player_uuid set from entity @e[tag=head,tag=confirming,limit=1,sort=nearest] ArmorItems[3].tag.origin

#* compare with players uuid

    #? will fail if it matches
execute store success score @s isBeingConfirmed run data modify storage temp dead_player_uuid set from entity @s UUID

#* move player to confirmed team
execute if entity @s[team=traitor] if score @s isBeingConfirmed matches 0 run team join conf_traitor
execute if entity @s[team=innocent] if score @s isBeingConfirmed matches 0 run team join conf_innocent
execute if entity @s[team=detective] if score @s isBeingConfirmed matches 0 run team join conf_detective


