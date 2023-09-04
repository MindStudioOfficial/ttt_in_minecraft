#* counts alive innocents/detectives confirmed/unconfirmed
execute store result score stats innocentcount if entity @a[predicate=ttt:in_any_innocent_team_alive]
