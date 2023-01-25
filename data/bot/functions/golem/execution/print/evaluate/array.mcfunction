data modify storage bot:variables RecursiveEvaluation.arrayStack append value []
data modify storage bot:variables RecursiveEvaluation.arrayEvaluationStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].values

execute if data storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1][0] run function bot:golem/execution/print/evaluate/loops/array

data modify storage bot:io Out set from storage bot:variables RecursiveEvaluation.arrayStack[-1]
data remove storage bot:variables RecursiveEvaluation.arrayStack[-1]
data remove storage bot:variables RecursiveEvaluation.arrayEvaluationStack[-1]
