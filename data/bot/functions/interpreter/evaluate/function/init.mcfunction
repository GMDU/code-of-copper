data modify storage moxlib:api/data/get target set from storage bot:interpreter registry.builtin
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name

function moxlib:api/data/get

data modify storage bot:interpreter temp.builtin set from storage moxlib:api/data/get success

execute if data storage bot:interpreter temp{builtin:true} run function bot:interpreter/evaluate/function/builtin/init
execute if data storage bot:interpreter temp{builtin:false} run function bot:interpreter/evaluate/function/custom/init

data modify storage bot:interpreter evaluate.break set value true