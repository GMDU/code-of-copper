data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate arrayEvaluationStack[-1][0]
function bot:interpreter/evaluate_stack
data modify storage bot:interpreter/evaluate arrayStack[-1] append from storage bot:io Out
data remove storage bot:interpreter/evaluate arrayEvaluationStack[-1][0]

execute if data storage bot:interpreter/evaluate arrayEvaluationStack[-1][0] run function bot:interpreter/evaluate/array/loop
