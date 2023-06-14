execute store result score .index bot.interpreter run data get storage bot:interpreter evaluate.result.value
data modify storage bot:interpreter evaluate.parameters.result set value {type:"literal",variant:string,value:[]}

function bot:interpreter/evaluate/literal/string/parameters/iterate

data modify storage bot:interpreter evaluate.parameters.result.parameters set from storage bot:interpreter evaluate.stack[-1].parameters
data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.parameters.result