execute store result score .index bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].parameters[0].value
data modify storage bot:interpreter evaluate.parameters.result set value {type:"undefined",value:undefined}

function bot:interpreter/decode/evaluate/array/parameters/iterate

data remove storage bot:interpreter evaluate.stack[-1].parameters[0]
data modify storage bot:interpreter evaluate.parameters.result.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.stack append from storage bot:interpreter evaluate.parameters.result
