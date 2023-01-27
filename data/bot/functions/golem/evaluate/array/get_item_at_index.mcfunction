scoreboard players set .current_index bot.execution.variables 0
scoreboard players set .found bot.execution.variables 0
data modify storage bot:io Out set value {type:"undefined",value:undefined}
function bot:golem/evaluate/array/get_item_at_index/loop
