data modify storage bot:io Out set value {type: "", value: 0}
data modify storage bot:io Out.value set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
data modify storage bot:io Out.type set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].variant
