data modify storage moxlib:api/data/get target set from storage bot:interpreter/evaluate temp[-1]
data modify storage moxlib:api/data/get key set value {name:[""]}
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter/evaluate stack[-1].value
function moxlib:api/data/get

data remove storage bot:interpreter/evaluate temp[-1]

execute if data storage moxlib:api/data/get {success:false} if data storage bot:interpreter/evaluate temp[-1] run function bot:interpreter/evaluate/variable/get_scope
