data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[1]
function bot:golem/evaluate

function bot:golem/execution/move_to_position

#slot
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate

data modify storage bot:io In set from entity @s Items
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:golem/utils/get_item_at_index

data modify storage bot:io In set from storage bot:io Out
execute unless data storage bot:io Out{type:undefined} unless data storage bot:program Error at @s if block ~ ~ ~ #bot:replacable run function bot:golem/execution/place/break_or_place

function bot:golem/execution/move_back
