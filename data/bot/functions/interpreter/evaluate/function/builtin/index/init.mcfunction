function bot:interpreter/evaluate/function/builtin/index/validation/arg0

data modify storage bot:api/interpreter/function execute.return set value {type:"literal",variant:"integer",value:-1}
execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run return -1

scoreboard players set $index bot.interpreter 0
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type: "array"} run function bot:interpreter/evaluate/function/builtin/index/array/iterate
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type: "string"} run function bot:interpreter/evaluate/function/builtin/index/string/init
