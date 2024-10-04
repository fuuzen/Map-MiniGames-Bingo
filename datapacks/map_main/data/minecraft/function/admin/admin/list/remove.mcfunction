$scoreboard players set tmp.target board $(id)
$scoreboard players set tmp.menu board $(menu)
tag @a remove map.control.target
execute as @a if score @s park.uuid = tmp.target board run tag @s add map.control.target
execute unless entity @a[tag=map.control.target] run tellraw @s ["\u00a7c操作失败：未找到操作目标。"]
$execute if entity @a[tag=map.control.target,tag=map.op] run tellraw @s ["\u00a7b操作成功：已\u00a7c删除\u00a7b对应地图管理员：",{"selector":"@a[tag=map.control.target,tag=map.op]"}," ",{"text": "[重新添加]","color": "green","clickEvent": {"action": "run_command","value": "/function admin/admin/list/add {id:$(id),menu:0}"}}]
execute unless entity @a[tag=map.control.target,tag=map.op] run tellraw @s ["\u00a7c操作失败：对应玩家不是地图管理员。"]
tag @a[tag=map.control.target,tag=map.op] remove map.op
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

tag @a remove map.control.target
execute if score tmp.menu board matches 1 run function minecraft:admin/admin/listops