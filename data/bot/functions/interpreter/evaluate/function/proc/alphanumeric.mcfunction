data modify storage bot:interpreter evaluate.replace set value {type: "literal", variant: "function"}
data modify storage bot:interpreter evaluate.replace.name set from storage bot:interpreter evaluate.stack[-1].value.value.value
data modify storage bot:interpreter evaluate.replace.evaluated_args set from storage bot:interpreter evaluate.stack[-1].args

data modify storage bot:interpreter evaluate.replace.metadata.exclude append value "proc"
data modify storage bot:interpreter evaluate.replace.metadata.status set value "execute"