execute as @a run function bot:player
execute as @e[type=chest_minecart,tag=bot.golem] run function bot:entity/golem
execute as @e[type=#bot:command,tag=bot.golem] run function bot:entity/passengers
execute as 259ba3bd-fde8-4439-87e7-627092c882c7 run function bot:entity/spawn

function bot:golem/execution/place/place_at_marker
execute if data storage bot:variables RunRootStack[-1].value[0] run function bot:golem/run_root_type
