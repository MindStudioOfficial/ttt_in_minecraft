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
- Place Traitor Doors spawner (place spawner on block below iron_door)
- Remove any spawner (hold this to visualize spawners)

Run `/function ttt:noadmin` to remove the items and remove the `admin` team.

Run `/function ttt:pause` to pause the round timer. (items and weapons will still work)
Run `/function ttt:resume` to resume the round timer.

Run `/function ttt:restart` to restart and resume the round.


