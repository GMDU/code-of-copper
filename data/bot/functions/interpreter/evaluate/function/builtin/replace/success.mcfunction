data modify storage bot:interpreter temp.replace.match set from storage bot:interpreter evaluate.stack[-1].args[1].value
data modify storage bot:interpreter temp.replace.checking set value []
data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[2].value[]
scoreboard players remove $replace_count bot.interpreter 1
