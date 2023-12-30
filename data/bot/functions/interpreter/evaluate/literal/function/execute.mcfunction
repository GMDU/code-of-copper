data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"
data modify storage bot:interpreter evaluate.next set value {type:"function"}
data modify storage bot:interpreter evaluate.next.args set from storage bot:interpreter evaluate.stack[-1].evaluated_args

function bot:interpreter/evaluate/literal/function/lookup/builtin
execute unless data storage bot:interpreter evaluate.next.variant run function bot:interpreter/evaluate/literal/function/lookup/proc
execute unless data storage bot:interpreter evaluate.next.variant run function bot:interpreter/evaluate/literal/function/lookup/custom
execute unless data storage bot:interpreter evaluate.next.variant run data modify storage bot:interpreter error set value '[{"text":"RuntimeError: Undefined function "},{"storage":"bot:interpreter","nbt":"evaluate.stack[-1].name","interpret":true}]'