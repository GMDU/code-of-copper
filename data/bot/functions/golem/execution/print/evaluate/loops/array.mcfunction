data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0]
function bot:golem/execution/print/_evaluate
data remove storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0]
execute if data storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0] run data modify storage bot:io Out append value [", "]

execute if data storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0] run function bot:golem/execution/print/evaluate/loops/array
