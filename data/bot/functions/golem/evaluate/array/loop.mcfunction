data modify storage bot:variables stack append from storage bot:variables arrayEvaluationStack[-1][0]
function bot:golem/_evaluate
data modify storage bot:variables arrayStack[-1] append from storage bot:io Out
data remove storage bot:variables arrayEvaluationStack[-1][0]

execute if data storage bot:variables arrayEvaluationStack[-1][0] run function bot:golem/evaluate/array/loop
