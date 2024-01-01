data modify storage bot:api/interpreter/function execute.return.value append value {key: [], value: {type: "undefined", variant: "undefined", value: false}}

data modify storage bot:interpreter temp.args.current set from storage bot:api/interpreter/function execute.args[0].value[0]
data modify storage bot:interpreter temp.args.key set from storage bot:api/interpreter/function execute.args[0].value[0].value[0]

execute unless data storage bot:interpreter temp.args.current.value[] run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Function obj() cannot transform an empty array."}'
execute unless data storage bot:interpreter temp.args.current{variant:"array"} run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Function obj() expected an array of only type \'array\'."}'
execute unless data storage bot:interpreter temp.args.key.value[] run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Cannot set blank string as object key."}'
execute unless data storage bot:interpreter temp.args.key{variant:"string"} run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Cannot set non string type as object key."}'
execute if data storage bot:interpreter error run return -1

data modify storage bot:api/interpreter/function execute.return.value[-1].key set from storage bot:api/interpreter/function execute.args[0].value[0].value[0].value
data modify storage bot:api/interpreter/function execute.return.value[-1].value set from storage bot:api/interpreter/function execute.args[0].value[0].value[1]

data remove storage bot:api/interpreter/function execute.args[0].value[0]
execute if data storage bot:api/interpreter/function execute.args[0].value[] run function bot:interpreter/evaluate/function/builtin/obj/iterate