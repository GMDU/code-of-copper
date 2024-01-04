data modify storage bot:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage bot:interpreter evaluate.next.value set from storage bot:interpreter evaluate.stack[-1].args[2]

execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"string"} run function bot:interpreter/evaluate/function/builtin/reduce/args/string
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"array"} run function bot:interpreter/evaluate/function/builtin/reduce/args/array
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"object"} run function bot:interpreter/evaluate/function/builtin/reduce/args/object

data modify storage bot:interpreter evaluate.next.args append from storage bot:interpreter evaluate.stack[-1].metadata.return

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
