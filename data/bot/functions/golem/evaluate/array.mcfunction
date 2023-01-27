data modify storage bot:variables RecursiveEvaluation.arrayStack append value []
data modify storage bot:variables RecursiveEvaluation.arrayEvaluationStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value

execute if data storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0] run function bot:golem/evaluate/iterable/loop

execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run data modify storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters set value true
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop

execute unless data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run data modify storage bot:io Out set value {type:"array", value: []}
execute unless data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run data modify storage bot:io Out.value set from storage bot:variables RecursiveEvaluation.arrayStack[-1]
data remove storage bot:variables RecursiveEvaluation.arrayStack[-1]
data remove storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1]
