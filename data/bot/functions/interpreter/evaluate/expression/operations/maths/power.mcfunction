scoreboard players operation $target moxlib.api.math.power = .a bot.execution.variables
scoreboard players operation $power moxlib.api.math.power = .b bot.execution.variables

function moxlib:api/math/power

execute store result storage bot:io Out.value int 1 run scoreboard players get $output moxlib.api.math.power

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: calculating ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " to the power of ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
