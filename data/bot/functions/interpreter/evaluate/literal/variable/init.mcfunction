data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].value
data modify storage moxlib:api/data/get target set from storage bot:interpreter variables

data modify storage bot:interpreter evaluate.replace set value {type:"undefined",value:undefined}
function moxlib:api/data/get

data modify storage moxlib:api/data/get output.value.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
execute unless data storage moxlib:api/data/get output.value.parameters run data modify storage bot:interpreter evaluate.stack[-1] set from storage moxlib:api/data/get output.value
data modify storage bot:interpreter evaluate.replace set from storage moxlib:api/data/get output.value