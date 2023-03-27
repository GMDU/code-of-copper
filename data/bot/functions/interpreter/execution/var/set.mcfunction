data modify entity @s data.variables append value {name: [], value: {}, scope: 0}
data modify entity @s data.variables[-1].name set from storage bot:interpreter/execution varName
data modify entity @s data.variables[-1].value set from storage bot:interpreter/execution value

data modify storage bot:dev_mode logs append value '[{"text": "Var: setting variable ", "color": "green"},{"nbt":"varName", "storage": "bot:interpreter/execution", "color": "yellow","interpret":true},{"text": " to value ", "color": "green"},{"nbt": "value", "storage": "bot:interpreter/execution", "color": "yellow"}]'
