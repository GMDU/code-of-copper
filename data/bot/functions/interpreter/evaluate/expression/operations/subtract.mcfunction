execute if data storage bot:interpreter/evaluate stack[-1].a{type:"integer"} run function bot:interpreter/evaluate/expression/operations/subtract/integer
execute if data storage bot:interpreter/evaluate stack[-1].a{type:"string"} run function bot:interpreter/evaluate/expression/operations/subtract/string
execute if data storage bot:interpreter/evaluate stack[-1].a{type:"array"} run function bot:interpreter/evaluate/expression/operations/subtract/array
execute if data storage bot:interpreter/evaluate stack[-1].a{type:"object"} run function bot:interpreter/evaluate/expression/operations/subtract/object

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: subtracting ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " from ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
