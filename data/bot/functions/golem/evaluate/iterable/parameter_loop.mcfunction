execute if data storage bot:interpreter/evaluate Parameterise{type:"array"} run function bot:golem/evaluate/array/parameter
execute if data storage bot:interpreter/evaluate Parameterise{type:"string"} run function bot:golem/evaluate/string/parameter
execute if data storage bot:interpreter/evaluate Parameterise{type:"object"} run function bot:golem/evaluate/object/parameter
execute unless data storage bot:interpreter/evaluate Parameterise{type:"string"} unless data storage bot:interpreter/evaluate Parameterise{type:"array"} unless data storage bot:interpreter/evaluate Parameterise{type:"object"} run data modify storage bot:interpreter/execution Error set value ["Can't index type "]
execute unless data storage bot:interpreter/evaluate Parameterise{type:"string"} unless data storage bot:interpreter/evaluate Parameterise{type:"array"} unless data storage bot:interpreter/evaluate Parameterise{type:"object"} run data modify storage bot:interpreter/execution Error append from storage bot:interpreter/evaluate Parameterise.type

data remove storage bot:interpreter/evaluate stack[-1].parameters[0]
execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run data modify storage bot:interpreter/evaluate Parameterise set from storage bot:io Out
execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run function bot:golem/evaluate/iterable/parameter_loop
