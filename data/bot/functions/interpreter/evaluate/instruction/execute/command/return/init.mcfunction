execute unless data storage bot:interpreter evaluate.stack[-1].args[{variant:"undefined"}] run data modify storage bot:interpreter evaluate.return_value set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0]

function bot:interpreter/evaluate/instruction/execute/command/return/iterate

execute unless data storage bot:interpreter evaluate.stack[] run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Cannot use return outside of a function"}'
execute unless data storage bot:interpreter evaluate.stack[] run return -1

data modify storage bot:interpreter evaluate.loop set value true
