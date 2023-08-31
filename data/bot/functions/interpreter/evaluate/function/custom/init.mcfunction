data modify storage moxlib:api/data/get target set from storage bot:interpreter registry.custom
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:interpreter error set value '[{"text":"RuntimeError: Undefined function "},{"storage":"bot:interpreter","nbt":"evaluate.stack[-1].name","interpret":true}]'
execute if data storage moxlib:api/data/get {success:false} run return -1

data modify storage bot:interpreter evaluate.replace set from storage moxlib:api/data/get output.value
data modify storage bot:interpreter evaluate.return_value set value {type:"undefined",value: false}

execute if data storage bot:interpreter evaluate.stack[-1].args[] run function bot:interpreter/evaluate/function/custom/set_args/init
