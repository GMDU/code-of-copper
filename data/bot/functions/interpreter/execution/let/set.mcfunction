data modify entity @s data.variables append value {name: [], value: {}, scope: 0}
data modify entity @s data.variables[-1] set from entity @s data.nest_level

data modify storage bot:dev_mode logs append value '[{"text": "Let: setting variable ", "color": "green"},{"nbt":"varName", "storage": "bot:interpreter/execution", "color": "yellow","interpret":true},{"text": " to value ", "color": "green"},{"nbt": "value", "storage": "bot:interpreter/execution", "color": "yellow"}]'
