data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].parameters[0]
function bot:interpreter/evaluate_stack
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:interpreter/execution Error set value ["Expected type integer for array index, but got type "]
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:interpreter/execution Error append from storage bot:io Out.type

data modify storage bot:io In set from storage bot:interpreter/evaluate Parameterise.value
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:interpreter/utils/get_item_at_index
