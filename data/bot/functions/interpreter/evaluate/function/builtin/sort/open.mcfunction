data modify storage bot:utils sort merge value {callback: "bot:interpreter/evaluate/function/builtin/sort/callback/init", stack: [{}]}

execute unless data storage bot:interpreter evaluate.stack[-1].args[1] run data modify storage bot:utils sort.callback set value "bot:interpreter/evaluate/function/builtin/sort/callback/value"

execute if data storage bot:interpreter evaluate.stack[-1].metadata.sort run data modify storage bot:utils sort.stack set from storage bot:interpreter evaluate.stack[-1].metadata.sort
execute unless data storage bot:interpreter evaluate.stack[-1].metadata.sort run data modify storage bot:utils sort.stack[-1].target set from storage bot:interpreter evaluate.stack[-1].args[0].value

function bot:interpreter/utils/sort/iterate

execute unless data storage bot:utils sort.stack[] run data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"