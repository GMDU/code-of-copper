scoreboard players set .found bot.execution.variables 0

function bot:interpreter/execution/return/loop

execute unless data entity @s data.instructions[-1] if score .found bot.execution.variables matches 0 run data modify storage bot:interpreter/execution Error set value ["Return instruction can only be used inside functions"]

execute unless data storage bot:interpreter/execution Error run data modify storage bot:dev_mode logs append value '[{"text": "Return: returning value ", "color": "green"},{"nbt":"data.return_value", "entity": "@s","color":"yellow"}]'

execute unless data storage bot:interpreter/execution Error run function bot:interpreter/execution/return/close
