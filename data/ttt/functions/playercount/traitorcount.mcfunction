#* counts all alive traitors confirmed/unconfirmed
execute store result score stats traitorcount if entity @a[predicate=ttt:any_traitor,gamemode=adventure]
