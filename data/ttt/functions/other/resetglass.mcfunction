execute at @e[tag=glass] unless block ~1 ~ ~ air run fill ~ ~ ~ ~ ~1 ~ glass_pane[east=true,west=true] replace
execute at @e[tag=glass] unless block ~ ~ ~1 air run fill ~ ~ ~ ~ ~1 ~ glass_pane[north=true,south=true] replace
