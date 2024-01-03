data modify storage bot:interpreter utils.stringify.target set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]

function bot:interpreter/utils/stringify/init

data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter utils.stringify.result[]
execute if data storage bot:interpreter evaluate.stack[-1].args[1] if data storage bot:interpreter evaluate.stack[-1].args[0].value[0] run data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[1].value[]

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/join/iterate