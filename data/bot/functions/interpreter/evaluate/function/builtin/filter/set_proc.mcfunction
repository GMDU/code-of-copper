data modify storage bot:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage bot:interpreter evaluate.next.value set from storage bot:interpreter evaluate.stack[-1].args[1]

execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"string"} run function bot:interpreter/evaluate/function/builtin/filter/args/string
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"array"} run function bot:interpreter/evaluate/function/builtin/filter/args/array
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type:"object"} run function bot:interpreter/evaluate/function/builtin/filter/args/object
