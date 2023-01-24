data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0]
function bot:turtle/_evaluate
data modify storage bot:variables RecursiveEvaluation.arrayStack[-1] append from storage bot:io Out
data remove storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0]

execute if data storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0] run function bot:turtle/evaluate/loops/array
