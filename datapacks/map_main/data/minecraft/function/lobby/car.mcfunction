##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run setblock 123 121 59 stone_button[powered=true]
# execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run summon minecart 122 120 59 {Invulnerable:1b,Silent:1b,Tags:["lobby.car"],CustomName:'["观光车"]',CustomNameVisible:1b}
# execute as @e[tag=lobby.car] run team join lobby @s
