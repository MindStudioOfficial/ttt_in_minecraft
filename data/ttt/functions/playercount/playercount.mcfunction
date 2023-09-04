#* counts any player (!=admin) alive/dead confirmed/unconfirmed
execute store result score stats playercount if entity @a[predicate=ttt:any_player]
