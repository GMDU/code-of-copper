data modify storage moxlib:api/data/set target set from storage bot:io Out.value
data modify storage moxlib:api/data/set key set value {key: []}
data modify storage moxlib:api/data/set key.key set from storage bot:interpreter/evaluate stack[-1].b.value[0].key
data modify storage moxlib:api/data/set data set value {value: []}
data modify storage moxlib:api/data/set data.value set from storage bot:interpreter/evaluate stack[-1].b.value[0].value
function moxlib:api/data/set

data modify storage bot:io Out.value set from storage moxlib:api/data/set output

data remove storage bot:interpreter/evaluate stack[-1].b.value[0]

execute if data storage bot:interpreter/evaluate stack[-1].b.value[0] run function bot:interpreter/evaluate/expression/operations/add/object/loop
