scoreboard players remove .current_index bot.execution.variables 1
execute if score .in1 bot.execution.variables = .current_index bot.execution.variables run scoreboard players set .found bot.execution.variables 1
execute if score .found bot.execution.variables matches 1 run data modify storage bot:io Out set from storage bot:io In[-1]
data remove storage bot:io In[-1]
execute unless score .found bot.execution.variables matches 1 run function bot:interpreter/utils/get_item_at_index/negative_index