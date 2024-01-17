data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[2].value[0]
data modify storage bot:interpreter evaluate.stack[-1].args[2].value append from storage bot:interpreter evaluate.stack[-1].args[2].value[0]
data remove storage bot:interpreter evaluate.stack[-1].args[2].value[0]
scoreboard players add $length bot.interpreter 1

execute if score $length bot.interpreter < $target_length bot.interpreter run function bot:interpreter/evaluate/function/builtin/rpad/iterate
