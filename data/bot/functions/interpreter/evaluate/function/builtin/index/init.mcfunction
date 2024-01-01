data modify storage bot:api/interpreter/function execute.return set value {type:"literal",variant:"integer",value:-1}
scoreboard players set $index bot.interpreter 0

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/index/iterate
