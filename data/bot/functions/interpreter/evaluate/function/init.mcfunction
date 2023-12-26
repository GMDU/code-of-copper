data modify storage moxlib:api/data/get target set from storage bot:interpreter registry.builtin
data modify storage moxlib:api/data/get target append from storage bot:interpreter registry.external[]
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name

function moxlib:api/data/get

data modify storage bot:interpreter temp.builtin set from storage moxlib:api/data/get success

data modify storage bot:interpreter evaluate.break set value true
execute if data storage bot:interpreter temp{builtin:true} run function bot:interpreter/evaluate/function/builtin/init
execute if data storage bot:interpreter temp{builtin:true} run return -1

data modify storage moxlib:api/data/get target set from storage bot:interpreter variables
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name
data modify storage moxlib:api/data/get key.value.variant set value "proc"

function moxlib:api/data/get

data modify storage bot:interpreter temp.is_proc set from storage moxlib:api/data/get success
execute if data storage bot:interpreter temp{is_proc:true} run function bot:interpreter/evaluate/function/proc/init
execute if data storage bot:interpreter temp{is_proc:true} run return -1

function bot:interpreter/evaluate/function/custom/init
