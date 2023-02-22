data modify storage bot:interpreter/evaluate arrayStack append value []
data modify storage bot:interpreter/evaluate arrayEvaluationStack append from storage bot:interpreter/evaluate stack[-1].value

execute if data storage bot:interpreter/evaluate arrayEvaluationStack[-1][0] run function bot:golem/evaluate/object/loop

execute unless data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:io Out set value {type:"object", value: []}
execute unless data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:io Out.value set from storage bot:interpreter/evaluate arrayStack[-1]
data remove storage bot:interpreter/evaluate arrayStack[-1]
data remove storage bot:interpreter/evaluate arrayEvaluationStack[-1]

execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run data modify storage bot:interpreter/evaluate stack[-1].hasParameters set value true
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:interpreter/evaluate Parameterise set from storage bot:io Out
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop
