data modify storage bot:interpreter temp.index.current set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage bot:interpreter temp.index.checking append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.index.current set from storage bot:interpreter temp.index.match[0]

data remove storage bot:interpreter temp.index.match[0]
data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check bot.interpreter matches 1 run function bot:interpreter/evaluate/function/builtin/index/string/fail

execute unless data storage bot:interpreter temp.index.match[] store result storage bot:api/interpreter/function execute.return.value int 1 run scoreboard players get $index bot.interpreter
execute unless data storage bot:interpreter temp.index.match[] run return -1

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/index/string/iterate
