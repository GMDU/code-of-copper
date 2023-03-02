execute as @e[type=chest_minecart,tag=bot.golem] run function bot:entity/golem
execute as @e[type=#bot:command,tag=bot.golem] run function bot:entity/markers
execute as 259ba3bd-fde8-4439-87e7-627092c882c7 run function bot:entity/spawn

execute as @e[type=chest_minecart,tag=bot.golem.base] run function bot:entity/tick

function bot:spec/_tick