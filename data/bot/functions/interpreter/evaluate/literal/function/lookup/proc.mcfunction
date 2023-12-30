data modify storage moxlib:api/data/get target set from storage bot:interpreter variables
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].name
data modify storage moxlib:api/data/get key.value.variant set value "proc"

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:false} run return -1

data modify storage bot:interpreter evaluate.next.value set from storage moxlib:api/data/get output.value
data modify storage bot:interpreter evaluate.next.variant set value "proc"