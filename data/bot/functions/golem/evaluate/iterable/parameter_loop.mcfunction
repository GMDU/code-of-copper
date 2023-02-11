execute if data storage bot:variables Parameterise{type:"array"} run function bot:golem/evaluate/array/parameter
execute if data storage bot:variables Parameterise{type:"string"} run function bot:golem/evaluate/string/parameter
execute if data storage bot:variables Parameterise{type:"object"} run function bot:golem/evaluate/object/parameter
execute unless data storage bot:variables Parameterise{type:"string"} unless data storage bot:variables Parameterise{type:"array"} unless data storage bot:variables Parameterise{type:"object"} run data modify storage bot:program Error set value ["Can't index type "]
execute unless data storage bot:variables Parameterise{type:"string"} unless data storage bot:variables Parameterise{type:"array"} unless data storage bot:variables Parameterise{type:"object"} run data modify storage bot:program Error append from storage bot:variables Parameterise.type

data remove storage bot:variables stack[-1].parameters[0]
execute if data storage bot:variables stack[-1].parameters[0] run data modify storage bot:variables Parameterise set from storage bot:io Out
execute if data storage bot:variables stack[-1].parameters[0] run function bot:golem/evaluate/iterable/parameter_loop
