execute unless data storage bot:interpreter evaluate.stack[-1].args[{variant:"undefined"}] run data modify storage bot:interpreter evaluate.return_value set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0]

function bot:interpreter/evaluate/instruction/execute/command/return/iterate

execute unless data storage bot:interpreter evaluate.stack[] run tellraw @a "Error: Yo dog! You can't use return outside of a function man!"
execute unless data storage bot:interpreter evaluate.stack[] run return -1

data modify storage bot:interpreter evaluate.loop set value true
