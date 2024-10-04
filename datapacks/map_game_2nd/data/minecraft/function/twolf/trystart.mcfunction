##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1
# playsound ui.button.click player @s
scoreboard players set wait.player tick 0
execute as @a[team=wait.wolfpeople,gamemode=adventure] run scoreboard players add wait.player tick 1

# ## regoin 维护
# scoreboard players set wait.player tick 0
# tellraw @s ["\n\u00a7c很抱歉，此游戏仍在测试阶段！\n"]

# ## endregoin 维护

execute if score twolf.state state matches 1.. run function minecraft:twolf/spec

## 检测是否禁止启动
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0

execute unless score twolf.state state matches 1.. if score wait.player tick matches ..2 run tellraw @s ["\u00a7c人数不够！请等待至少3人！"]
execute unless score twolf.state state matches 1.. if score wait.player tick matches 25.. run tellraw @s ["\u00a7c人数过多！最多支持24人！"]
execute unless score twolf.state state matches 1.. if score wait.player tick matches ..2 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score twolf.state state matches 1.. if score wait.player tick matches 25.. run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute unless score twolf.state state matches 1.. if score wait.player tick matches 3..24 run function minecraft:twolf/start
