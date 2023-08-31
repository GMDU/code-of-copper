execute store result score .index bot.interpreter run data get storage bot:interpreter evaluate.result.value
data modify storage bot:interpreter evaluate.parameters.result set value {type:"undefined",value: false}

function bot:interpreter/evaluate/literal/array/parameters/iterate

data modify storage bot:interpreter evaluate.parameters.result.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
data modify storage bot:interpreter evaluate.parameters.result.metadata.status set value "closed"
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.parameters.result