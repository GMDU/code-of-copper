data modify entity @s data.variables prepend value {name: [], value: {}}
data modify entity @s data.variables[0].name set from storage bot:interpreter/execution/function function.parameters[0].value
data modify entity @s data.variables[0].value set from storage bot:interpreter/execution/function args[0]
data modify entity @s data.variables[0].scope set from entity @s data.nest_level

execute unless data storage bot:interpreter/execution/function args[0] if data storage bot:interpreter/execution/function function.parameters[0].default run function bot:interpreter/execution/function/fallback
execute unless data storage bot:interpreter/execution/function args[0] unless data storage bot:interpreter/execution/function function.parameters[0].default run function bot:interpreter/execution/function/set_args/no_arg

data remove storage bot:interpreter/execution/function function.parameters[0]
data remove storage bot:interpreter/execution/function args[0]

execute if data storage bot:interpreter/execution/function function.parameters[0] run function bot:interpreter/execution/function/set_args
