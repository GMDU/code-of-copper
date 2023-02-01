execute if data storage bot:variables Parameterise{type:"array"} run function bot:golem/evaluate/array/parameter
execute if data storage bot:variables Parameterise{type:"string"} run function bot:golem/evaluate/string/parameter
data remove storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0]
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run data modify storage bot:variables Parameterise set from storage bot:io Out
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run function bot:golem/evaluate/iterable/parameter_loop
