##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

team join wait.sw @s
gamemode adventure @s
title @s title ["\u00a7f\u00a7l云端争霸"]
title @s subtitle ["\u00a7aCloudwars"]
execute in airworld run tp @s 688 44 353 0 0
clear @s
effect clear @s
effect give @s instant_health 1 25 true
execute if score sw.state state matches 1.. run function minecraft:cloud/spec

execute if score boat.state state matches 1.. run function boat/spec
xp set @s 0 levels
xp set @s 0 points
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
