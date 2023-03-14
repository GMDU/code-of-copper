data modify storage bot:interpreter/evaluate arrayStack append value []
data modify storage bot:interpreter/evaluate arrayEvaluationStack append from storage bot:interpreter/evaluate stack[-1].value

execute if data storage bot:interpreter/evaluate arrayEvaluationStack[-1][0] run function bot:interpreter/evaluate/array/loop

execute unless data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:io Out set value {type:"array", value: []}
execute unless data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:io Out.value set from storage bot:interpreter/evaluate arrayStack[-1]
data remove storage bot:interpreter/evaluate arrayStack[-1]
data remove storage bot:interpreter/evaluate arrayEvaluationStack[-1]

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: evaluating array ", "color": "green"},{"nbt":"stack[-1].value", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'

execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run data modify storage bot:interpreter/evaluate stack[-1].hasParameters set value true
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:interpreter/evaluate Parameterise set from storage bot:io Out
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run function bot:interpreter/evaluate/iterable/parameter_loop
