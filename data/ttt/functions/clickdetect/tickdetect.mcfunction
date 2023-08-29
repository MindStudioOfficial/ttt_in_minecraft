execute as @a[scores={click=1..},nbt={SelectedItem: {tag: {rifle: 1b}}}] at @s run function ttt:raycast/cast_rifle
execute as @a[scores={click=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] at @s run function ttt:raycast/cast_pistol
execute as @a[scores={click=1..},nbt={SelectedItem: {tag: {t_swapper: 1b}}}] at @s run function ttt:roles/traitor/swapper_start
scoreboard players reset @a[scores={click=1..}] click
