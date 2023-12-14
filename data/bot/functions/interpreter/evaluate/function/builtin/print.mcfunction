data modify storage bot:interpreter utils.stringify.target set from storage bot:interpreter evaluate.stack[-1].args[0]

function bot:interpreter/utils/stringify/init

execute at @s run tellraw @a[distance=..16] {"nbt":"utils.stringify.result", "storage": "bot:interpreter", "interpret": true}
data modify storage bot:api/interpreter/function execute.return set value {type:"undefined",value: false}