data modify storage bot:io Out.type set value "boolean"
execute store result storage bot:io Out.value byte 1 if score .value bot.execution.variables <= .expression bot.execution.variables

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: checking if ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " is less than or equal to ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
