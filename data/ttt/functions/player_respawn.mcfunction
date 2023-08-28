#* tp random player to spawnpoint
tp @r[team=roundover] ~ ~ ~
#* join player to preparing team
team join preparing @a[team=roundover,limit=1,sort=nearest]
