##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=wolf.tip] remove wolf.tip
tag @a[team=wolfpeople] add wolf.tip
tag @a[team=wait.wolfpeople] add wolf.tip

execute as @a[team=wolfpeople,gamemode=adventure] at @s as @e[type=item,distance=..3] run data merge entity @s {PickupDelay:0s}
