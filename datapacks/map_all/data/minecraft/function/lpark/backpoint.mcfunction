##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute as @e[type=marker,tag=lpark] at @s if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid rotated ~ 0 run tag @s add totpsel
execute as @e[tag=totpsel] at @s run tp @a[tag=park.sel] ~ ~ ~
execute unless entity @e[tag=totpsel] in parkourworld run tp @s 8 4 8 0 0
tag @e[tag=totpsel] remove totpsel
tag @a[tag=park.sel] remove park.sel
tellraw @s ["\u00a7a[记录点] \u00a7b你已返回记录点！\n",{"text":"\u00a7d[Back]","clickEvent": {"action": "run_command","value": "/trigger parkour set 1"},"hoverEvent": {"action": "show_text","value": "\u00a7b[信息] 你将会返回记录点"}}," ",{"text":"\u00a7e[Delete]","clickEvent": {"action": "run_command","value": "/trigger parkour set 3"},"hoverEvent": {"action": "show_text","value": "\u00a7e[警告] 你的所有的记录点都将消失！"}}," ",{"text":"\u00a7c[Reset]","clickEvent": {"action": "run_command","value": "/trigger parkour set 2"},"hoverEvent": {"action": "show_text","value": "\u00a7c[警告] 你的所有的进度都将消失！"}}," ",{"text":"\u00a76[Cancel]","clickEvent": {"action": "run_command","value": "/trigger hub"},"hoverEvent": {"action": "show_text","value": "\u00a7c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]
effect give @s slow_falling 1 255 true

# playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute at @s run playsound ui.button.click player @s ~ ~ ~ 10 1 1

