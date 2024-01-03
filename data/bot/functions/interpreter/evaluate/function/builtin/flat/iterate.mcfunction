execute store result score $flat_depth bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].depth
data modify storage bot:interpreter evaluate.stack[-1].metadata.current set from storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].value[0]
data remove storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].value[0]

execute unless data storage bot:interpreter evaluate.stack[-1].metadata.current{type:"literal",variant:"array"} run data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].metadata.current
execute if data storage bot:interpreter evaluate.stack[-1].metadata.current{type:"literal",variant:"array"} run function bot:interpreter/evaluate/function/builtin/flat/array

data remove storage bot:interpreter evaluate.stack[-1].metadata.current
execute unless data storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].value[] run data remove storage bot:interpreter evaluate.stack[-1].metadata.stack[-1]
execute if data storage bot:interpreter evaluate.stack[-1].metadata.stack[-1] run function bot:interpreter/evaluate/function/builtin/flat/iterate