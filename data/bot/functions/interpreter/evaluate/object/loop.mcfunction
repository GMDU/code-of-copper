data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate arrayEvaluationStack[-1][0].value
function bot:interpreter/_evaluate
data modify storage bot:interpreter/evaluate arrayStack[-1] append value {key: {type: "string", value: []}, value: {type: "undefined", value: undefined}}
data modify storage bot:interpreter/evaluate arrayStack[-1][-1].key.value set from storage bot:interpreter/evaluate arrayEvaluationStack[-1][0].key.value
data modify storage bot:interpreter/evaluate arrayStack[-1][-1].value set from storage bot:io Out
data remove storage bot:interpreter/evaluate arrayEvaluationStack[-1][0]

execute if data storage bot:interpreter/evaluate arrayEvaluationStack[-1][0] run function bot:interpreter/evaluate/object/loop
