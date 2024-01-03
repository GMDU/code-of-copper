execute store result score $value bot.interpreter run data get storage bot:interpreter evaluate.return_value.value
execute unless score $value bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.stack[-1].metadata.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run return -1

data modify storage bot:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage bot:interpreter evaluate.next.args append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage bot:interpreter evaluate.next.value set from storage bot:interpreter evaluate.stack[-1].args[1]
