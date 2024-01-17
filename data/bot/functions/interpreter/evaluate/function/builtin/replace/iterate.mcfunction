execute if score $replace_count bot.interpreter matches 0 run data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[]
execute if score $replace_count bot.interpreter matches 0 run return -1

data modify storage bot:interpreter temp.replace.current set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage bot:interpreter temp.replace.checking append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.replace.current set from storage bot:interpreter temp.replace.match[0]

data remove storage bot:interpreter temp.replace.match[0]
data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check bot.interpreter matches 1 run function bot:interpreter/evaluate/function/builtin/replace/fail
execute unless data storage bot:interpreter temp.replace.match[] run function bot:interpreter/evaluate/function/builtin/replace/success

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/replace/iterate
