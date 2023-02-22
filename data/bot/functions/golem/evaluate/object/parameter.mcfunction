data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].parameters[0]
function bot:golem/_evaluate
execute unless data storage bot:io Out{type:"integer"} unless data storage bot:io Out{type:"string"} run data modify storage bot:program Error set value ["Expected type integer or string for object parameter, but got type "]
execute unless data storage bot:io Out{type:"integer"} unless data storage bot:io Out{type:"string"} run data modify storage bot:program Error append from storage bot:io Out.type

data modify storage bot:interpreter/evaluate type set from storage bot:io Out.type

execute if data storage bot:interpreter/evaluate {type:"integer"} run function bot:golem/evaluate/object/parameter/integer
execute if data storage bot:interpreter/evaluate {type:"string"} run function bot:golem/evaluate/object/parameter/string
