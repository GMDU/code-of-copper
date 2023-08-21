function bot:interpreter/evaluate/instruction/execute/keyword/break/iterate

execute unless data storage bot:interpreter evaluate.stack[] run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Cannot use break outside of a loop"}'
execute unless data storage bot:interpreter evaluate.stack[] run return -1
execute if data storage bot:interpreter temp.instruction{tags:["enclosed"]} run data modify storage bot:interpreter error set value '{"text":"RuntimeError: Cannot use break outside of a loop"}'
execute if data storage bot:interpreter temp.instruction{tags:["enclosed"]} run return -1
