data modify storage bot:interpreter evaluate.parameters.result set value {type:"undefined",variant:undefined}

function bot:interpreter/evaluate/literal/resource/parameters/check

data modify storage bot:interpreter evaluate.parameters.result.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.parameters.result