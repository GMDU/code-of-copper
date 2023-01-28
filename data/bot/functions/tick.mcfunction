execute as @a run function bot:player
function bot:golem/execution/place/place_at_marker
execute if data storage bot:variables RunRootStack[-1].value[0] run function bot:golem/run_root_type
