##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team modify boat prefix ["\u00a7a[W]\u00a79 冰船\u00a78 | "]

scoreboard players reset @e[tag=boat]
kill @e[tag=boat]
scoreboard players set boat.state state 0

gamemode adventure @a[team=boat]
execute as @a[team=boat] run function boat/join
kill @e[type=marker,tag=boat.trap]
team modify hunger friendlyFire false

