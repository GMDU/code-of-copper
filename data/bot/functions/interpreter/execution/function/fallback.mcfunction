data modify storage bot:io In set from storage bot:interpreter/execution/function function.parameters[0].default
function bot:interpreter/evaluate
data modify entity @s data.variables[0].value set from storage bot:io Out
data modify entity @s data.variables[0].scope set from entity @s data.nest_level
