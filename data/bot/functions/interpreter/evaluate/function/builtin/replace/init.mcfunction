data remove storage bot:interpreter temp.replace
data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage bot:interpreter temp.replace.match set from storage bot:interpreter evaluate.stack[-1].args[1].value
execute store result score $replace_count bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[3].value
execute unless data storage bot:interpreter evaluate.stack[-1].args[3] run scoreboard players set $replace_count bot.interpreter -1

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/replace/iterate

data modify storage bot:api/interpreter/function execute.return.value[-1].value append from storage bot:interpreter temp.replace.checking[]
