data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0]
function bot:golem/_evaluate
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:program Error set value ["Expected type integer for string index, but got type "]
execute unless data storage bot:io Out{type:"integer"} run data modify storage bot:program Error append from storage bot:io Out.type

data modify storage bot:io In set from storage bot:variables Parameterise.value
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:golem/utils/get_item_at_index

data modify storage bot:variables char set from storage bot:io Out
data modify storage bot:io Out set value {type: "string", value: []}
data modify storage bot:io Out.value append from storage bot:variables char
execute if data storage bot:variables char{type:"undefined"} run data modify storage bot:io Out set from storage bot:variables char
