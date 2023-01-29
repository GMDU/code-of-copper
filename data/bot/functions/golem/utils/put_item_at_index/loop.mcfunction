execute if score .in1 bot.execution.variables = .current_index bot.execution.variables run scoreboard players set .found bot.execution.variables 1
execute if score .found bot.execution.variables matches 1 run data modify storage bot:io Out append from storage bot:io In
execute unless score .found bot.execution.variables matches 1 run data modify storage bot:io Out append from storage bot:io In2[0]
scoreboard players set .found bot.execution.variables 0
scoreboard players add .current_index bot.execution.variables 1
data remove storage bot:io In2[0]
execute if data storage bot:io In2[0] run function bot:golem/utils/put_item_at_index/loop
