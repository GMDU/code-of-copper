data modify storage bot:interpreter evaluate.parameters.result set value {type:"undefined",variant:undefined}

data modify storage moxlib:api/data/get target set from storage bot:interpreter evaluate.stack[-1].value
data modify storage moxlib:api/data/get key.key set from storage bot:interpreter evaluate.result.value

function moxlib:api/data/get

data modify storage bot:interpreter evaluate.parameters.result set from storage moxlib:api/data/get output.value
data modify storage bot:interpreter evaluate.parameters.result.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.parameters.result