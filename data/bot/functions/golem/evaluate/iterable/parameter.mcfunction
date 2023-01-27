data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0]
function bot:golem/_evaluate
execute unless data storage bot:io Out{type:"number"} run data modify storage bot:program Error set value ["Expected type number for array/string index, but got type "]
execute unless data storage bot:io Out{type:"number"} run data modify storage bot:program Error append from storage bot:io Out.type

data modify storage bot:io In set from storage bot:variables RecursiveEvaluation.arrayStack[-1]
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:golem/evaluate/iterable/get_item_at_index
