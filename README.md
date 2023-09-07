# GMod TTT in Minecraft - Datapack

This datapack adds TTT from Garry's Mod to your Minecraft World

Use this datapack together with the [resourcepack](https://github.com/MindStudioOfficial/ttt_in_minecraft_resourcepack) for weapon textures and sounds.
## Supported MC Versions

- 1.20.x

## Features

### Roles

- Innocent
- Traitor
- Detective

### Weapons

- Wooden Sword for close combat
- Rifle with Ammo
- Pistol with Ammo

### Grenades

- Smoke Grenade
- Fire Grenade (does 2 hearts damage every second)



### Traitor Shop Items

- Bloody Knife (one-hit, single-use)
- Medikit (health potion)
- Baseball Bat (knockback)
- Quick Escape Pearl (enderpearl)
- C4
- Invisibility Potion
- Radar (tracks closest innocent/detective)
- Swapper (swap position with random player after 5s)

### Detective Features

- Armored Vest
- Can see particles in the area around dead bodies to locate them easier.

### Admin Tools

Run `/function ttt:setup` to initialize all necessary scoreboard objectives, gamerules and teams.

Run `/function ttt:admin` to get the spawner items.

- Place weapon spawner
- Place grenade spawner
- Place player spawnpoints
- Place breakable glass spawner (replaces glass panes at start of round)
- Place traitor doors spawner (place spawner on block below iron_door)
- Remove any spawner (hold this to visualize spawners)
- Place teleporter (two will link together, max 12 pairs)
- Place explosive barrel (will explode when shot, by other barrel, by c4 and by fire grenade)
- Place minecart that can be carried around like with a magneto stick.
- Mark death zone corners (North-West-Bottom and South-East-Top), players will get damage over time when inside
- Mark mineable block (blocks that can be destroyed with leftclick)
  Run `function ttt:other/mineable/mine_summon` to convert actual blocks inside the spawner to fake blocks that can be destroyed with leftclick.
  At the start of every round `function ttt:other/mineable/mine_reset` will be run to reset all fake blocks that have been destroyed.
  Blocks that can be converted are hardcoded in `data/ttt/functions/other/mineable/mine_replace.mcfunction`

Run `/function ttt:noadmin` to remove the items and remove the `admin` team.

Run `/function ttt:pause` to pause the round timer. (items and weapons will still work)
Run `/function ttt:resume` to resume the round timer.

Run `/function ttt:restart` to restart and resume the round.


