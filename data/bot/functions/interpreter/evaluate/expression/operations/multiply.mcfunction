execute store result storage bot:io Out.value int 1 run scoreboard players operation .value bot.execution.variables *= .expression bot.execution.variables

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: multiplying ", "color": "green"},{"nbt":"stack[-1].expressionValue", "storage": "bot:interpreter/expression","color":"yellow"},{"text": " by ", "color": "green"},{"nbt":"stack[-1].expressionExpression", "storage": "bot:interpreter/expression","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
