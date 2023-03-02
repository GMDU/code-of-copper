scoreboard players set .current_index bot.execution.variables 0
scoreboard players set .found bot.execution.variables 0
data modify storage bot:io Out set value {type:"undefined",value:undefined}
execute if score .in1 bot.execution.variables matches 0.. run function bot:interpreter/utils/get_item_at_index/positive_index
execute if score .in1 bot.execution.variables matches ..-1 run function bot:interpreter/utils/get_item_at_index/negative_index
