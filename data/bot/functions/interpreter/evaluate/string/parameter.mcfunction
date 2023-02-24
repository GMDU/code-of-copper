data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].parameters[0]
function bot:interpreter/_evaluate
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:interpreter/execution Error set value ["Expected type integer for string index, but got type "]
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:interpreter/execution Error append from storage bot:io Out.type

data modify storage bot:io In set from storage bot:interpreter/evaluate Parameterise.value
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:interpreter/utils/get_item_at_index

data modify storage bot:interpreter/evaluate char set from storage bot:io Out
data modify storage bot:io Out set value {type: "string", value: []}
data modify storage bot:io Out.value append from storage bot:interpreter/evaluate char
execute if data storage bot:interpreter/evaluate char{type:"undefined"} run data modify storage bot:io Out set from storage bot:interpreter/evaluate char
