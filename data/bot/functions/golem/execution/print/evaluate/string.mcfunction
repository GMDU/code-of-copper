data modify storage bot:io Out append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
data modify storage bot:io Out[-1] prepend value "'"
data modify storage bot:io Out[-1] append value "'"