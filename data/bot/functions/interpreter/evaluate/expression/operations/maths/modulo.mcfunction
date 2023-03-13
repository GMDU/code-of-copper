execute store result storage bot:io Out.value int 1 run scoreboard players operation .a bot.execution.variables %= .b bot.execution.variables

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: calculating ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " mod ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
