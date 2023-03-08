scoreboard players set .found bot.execution.variables 0

function bot:interpreter/execution/break/loop

execute unless data entity @s data.instructions[-1] if score .found bot.execution.variables matches 0 run data modify storage bot:interpreter/execution Error set value ["Break instruction can only be used inside loops"]
