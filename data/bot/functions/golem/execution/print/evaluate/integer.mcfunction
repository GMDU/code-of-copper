data modify storage bot:io Out append value []
data modify storage bot:io Out[-1] append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
