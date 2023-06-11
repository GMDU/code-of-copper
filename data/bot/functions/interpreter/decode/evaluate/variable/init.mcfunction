data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].value
data modify storage moxlib:api/data/get target set from storage bot:interpreter instructions[-1].variables
data modify storage moxlib:api/data/get target append from storage bot:interpreter global_variables[]

data modify storage bot:interpreter evaluate.stack[-1] set value {type:"undefined",value:undefined}
function moxlib:api/data/get

data modify storage moxlib:api/data/get output.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
execute unless data storage moxlib:api/data/get output.parameters run data modify storage bot:interpreter evaluate.stack[-1] set from storage moxlib:api/data/get output
execute unless data storage moxlib:api/data/get output.parameters run return -1

data modify storage bot:interpreter evaluate.next set from storage moxlib:api/data/get output
data remove storage bot:interpreter evaluate.stack[-1]