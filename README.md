# Map-MiniGames + Bingo

魔改 Map-MiniGames + Yet Another Bingo 混合版

⚠only for 1.21.1 fabric

详见：

- https://minecraft.horrific.dev/bingo
- https://gitlab.com/horrific-tweaks/bingo
- https://wifi-left.github.io/MC-MiniGames
- https://github.com/wifi-left/Map-MiniGames
t
## 🍗食用须知

1. 将 `lobby_world` 压缩后得到的 `lobby_world.zip` 放在 `config/yet-another-minecraft-bingo/lobby_world.zip`
2. 将以下内容复制到地图目录去：
   - `data`
   - `datapacks`
   - `dimensions`
   - `resourcepack`
3. 每次结束 Bingo 需要重启服务器 `/restart`

除了 `data` 均可以用软链接。`dimensions` 很大最好用软链接

Windows 用快捷方式是不行的~

## 🐞BUG

- Bingo 游戏开始后会得到 Regeneration 的 buff
- Bingo 游戏开始后仍可以使用 `trigger hub`
- Bingo 游戏结束后玩家变成创造模式
- 小游戏地图会生成怪物
- 小游戏地图渲染有雾
- PVE 小游戏无法和 NPC 互动
