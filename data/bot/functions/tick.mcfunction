execute as @a run function bot:player
execute as @e[type=chest_minecart,tag=bot.golem] run function bot:golem
function bot:golem/execution/place/place_at_marker
execute if data storage bot:variables RunRootStack[-1].value[0] run function bot:golem/run_root_type
