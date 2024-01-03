data modify storage bot:interpreter temp.variant set from storage bot:interpreter evaluate.stack[-1].args[0].variant
execute unless data storage bot:interpreter temp{variant:"string"} run data modify storage bot:interpreter error set value "RuntimeError: Call - Function names must be strings"
execute unless data storage bot:interpreter temp{variant:"string"} run return -1

data modify storage bot:interpreter evaluate.replace set value {type: "literal", variant: "function", metadata: {status: "execute"}}
data modify storage bot:interpreter evaluate.replace.name set from storage bot:interpreter evaluate.stack[-1].args[0].value
data modify storage bot:interpreter evaluate.replace.evaluated_args set from storage bot:interpreter evaluate.stack[-1].args[1].value
