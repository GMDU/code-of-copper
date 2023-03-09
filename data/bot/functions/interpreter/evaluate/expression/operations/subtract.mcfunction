execute if data storage bot:interpreter/expression stack[-1].expressionValue{type:"integer"} run function bot:interpreter/evaluate/expression/operations/subtract/integer
execute if data storage bot:interpreter/expression stack[-1].expressionValue{type:"string"} run function bot:interpreter/evaluate/expression/operations/subtract/string
execute if data storage bot:interpreter/expression stack[-1].expressionValue{type:"array"} run function bot:interpreter/evaluate/expression/operations/subtract/array
execute if data storage bot:interpreter/expression stack[-1].expressionValue{type:"object"} run function bot:interpreter/evaluate/expression/operations/subtract/object

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: subtracting ", "color": "green"},{"nbt":"stack[-1].expressionExpression", "storage": "bot:interpreter/expression","color":"yellow"},{"text": " from ", "color": "green"},{"nbt":"stack[-1].expressionValue", "storage": "bot:interpreter/expression","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
