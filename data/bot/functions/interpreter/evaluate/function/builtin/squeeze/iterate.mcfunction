execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.last set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage bot:interpreter evaluate.stack[-1].args[1].value[] run function bot:interpreter/evaluate/function/builtin/squeeze/filter

execute if score $check bot.interpreter matches 1.. run data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/squeeze/iterate