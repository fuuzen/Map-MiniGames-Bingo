##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=play.tntwars] title ["\u00a7cGAME OVER"]
title @a[team=play.tntwars,tag=tntwars.b] title ["\u00a76YOU WON!"]
scoreboard players add @a[team=play.tntwars,tag=tntwars.b,tag=play.total] score 1
title @a[team=wait.tntwars] title ["\u00a7cGAME OVER"]
title @a[team=play.tntwars] subtitle ["\u00a7b「队伍B」\u00a7f获胜！"]
title @a[team=wait.tntwars] subtitle ["\u00a7b「队伍B」\u00a7f获胜！"]
tellraw @a[team=wait.tntwars] ["\n\u00a7e ※ \u00a7c\u00a7lTNT Wars\n\u00a7b「队伍B」\u00a76获胜！\n"]
tellraw @a[team=play.tntwars] ["\n\u00a7e ※ \u00a7c\u00a7lTNT Wars\n\u00a7b「队伍B」\u00a76获胜！\n"]
function tntwars/over/over
