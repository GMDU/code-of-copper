data modify storage bot:interpreter temp.variant set from storage bot:interpreter evaluate.stack[-1].args[0].variant
data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].args[0]

execute if data storage bot:interpreter temp{variant:"string"} run function bot:interpreter/evaluate/function/builtin/delete/array with storage bot:interpreter evaluate.stack[-1].args[1]
execute if data storage bot:interpreter temp{variant:"array"} run function bot:interpreter/evaluate/function/builtin/delete/array with storage bot:interpreter evaluate.stack[-1].args[1]
execute if data storage bot:interpreter temp{variant:"object"} run function bot:interpreter/evaluate/function/builtin/delete/object with storage bot:interpreter evaluate.stack[-1].args[1]
