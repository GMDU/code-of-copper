execute if score $tile_drop_guard bot.interpreter matches 1 run gamerule doTileDrops true
scoreboard players set $tile_drop_guard bot.interpreter 0

execute as @e[type=chest_minecart,tag=bot.golem] run function bot:entity/golem
execute as @e[type=#bot:command] run function bot:entity/markers

execute as @e[type=chest_minecart,tag=bot.golem.base] run function bot:entity/tick

function bot:spec/_tick