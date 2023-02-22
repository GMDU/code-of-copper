data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate arrayEvaluationStack[-1][0].value
function bot:golem/_evaluate
data modify storage bot:interpreter/evaluate arrayStack[-1] append value {key: {type: "string", value: [""]}, value: {type: "undefined", value: undefined}}
data modify storage bot:interpreter/evaluate arrayStack[-1][-1].key.value set from storage bot:interpreter/evaluate arrayEvaluationStack[-1][0].key
data modify storage bot:interpreter/evaluate arrayStack[-1][-1].value set from storage bot:io Out
data remove storage bot:interpreter/evaluate arrayEvaluationStack[-1][0]

execute if data storage bot:interpreter/evaluate arrayEvaluationStack[-1][0] run function bot:golem/evaluate/object/loop
