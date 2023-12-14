data modify storage bot:interpreter temp.variant set from storage bot:interpreter evaluate.stack[-1].args[0].variant
data modify storage bot:interpreter evaluate.return_value set value {type:"undefined",value: false}

execute if data storage bot:interpreter temp{variant:"string"} run function bot:interpreter/evaluate/function/builtin/delete/array
execute if data storage bot:interpreter temp{variant:"array"} run function bot:interpreter/evaluate/function/builtin/delete/array
execute if data storage bot:interpreter temp{variant:"object"} run function bot:interpreter/evaluate/function/builtin/delete/object
