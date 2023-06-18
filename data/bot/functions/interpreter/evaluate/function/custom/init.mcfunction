data modify storage moxlib:api/data/get target set from storage bot:interpreter registry.custom
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter stack[-1].name

function moxlib:api/data/get

data modify storage bot:interpreter evaluate.next set from storage moxlib:api/data/get output.value
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.return_value set value {type:"undefined",value:"undefined"}
execute if data storage moxlib:api/data/get {success:true} run return -1

tellraw @a "Error: Could not find function."

# Raise errors here