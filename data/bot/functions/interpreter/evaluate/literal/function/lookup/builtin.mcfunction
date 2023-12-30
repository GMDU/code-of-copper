data modify storage moxlib:api/data/get target set from storage bot:interpreter registry.builtin
data modify storage moxlib:api/data/get target append from storage bot:interpreter registry.external[]
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:false} run return -1

data modify storage bot:interpreter evaluate.next.value set from storage moxlib:api/data/get output
data modify storage bot:interpreter evaluate.next.variant set value "builtin"