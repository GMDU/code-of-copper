scoreboard players set .current_index bot.execution.variables 0
scoreboard players set .found bot.execution.variables 0
data modify storage bot:io Out set value []
function bot:golem/utils/put_item_at_index/loop
