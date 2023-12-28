data modify storage bot:interpreter temp.variant set from storage bot:interpreter evaluate.stack[-1].args[0].variant

execute if data storage bot:interpreter temp{variant:"integer"} run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].args[0]
execute if data storage bot:interpreter temp{variant:"integer"} run return -1

execute if data storage bot:interpreter temp{variant:"string"} run function bot:interpreter/evaluate/function/builtin/int/string
execute if data storage bot:interpreter temp{variant:"string"} run return -1

data modify storage bot:interpreter error set value '[{"text":"RuntimeError: Cannot convert type "},{"storage":"bot:interpreter","nbt":"temp.variant"},{"text":" to integer"}]'
