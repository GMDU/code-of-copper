function bot:golem/evaluate/iterable/parameter
data remove storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0]
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run data modify storage bot:variables RecursiveEvaluation.arrayStack[-1] set from storage bot:io Out.value
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run function bot:golem/evaluate/iterable/parameter_loop
