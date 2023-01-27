data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:io Out.value set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
data modify storage bot:io Out.type set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].variant

execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].parameters[0] run data modify storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters set value true
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run data modify storage bot:variables RecursiveEvaluation.arrayStack append from storage bot:io Out.value
execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop

execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].hasParameters run data remove storage bot:variables RecursiveEvaluation.arrayStack[-1]
