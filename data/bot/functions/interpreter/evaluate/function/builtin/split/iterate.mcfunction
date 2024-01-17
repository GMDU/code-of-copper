data modify storage bot:interpreter temp.split.current set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage bot:interpreter temp.split.checking append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.split.current set from storage bot:interpreter temp.split.separator[0]

data remove storage bot:interpreter temp.split.separator[0]
data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check bot.interpreter matches 1 run function bot:interpreter/evaluate/function/builtin/split/fail
execute unless data storage bot:interpreter temp.split.separator[] run function bot:interpreter/evaluate/function/builtin/split/success

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/split/iterate
