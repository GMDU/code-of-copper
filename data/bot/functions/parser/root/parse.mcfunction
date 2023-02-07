execute unless data storage bot:parser stack[-1].instructions run function bot:parser/root/definitions
data modify storage bot:parser consumed set value true

function bot:parser/root/filter/init

execute unless data storage bot:parser stack[-1].instructions[{}] run data modify storage bot:parser raise set value '{"text":"[Root - Instruction]: Invalid instruction at \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'
tellraw @s {"storage":"bot:parser","nbt":"stack[-1].instructions[0]"}

execute if data storage bot:parser stack[-1].instructions[0] unless data storage bot:parser stack[-1].instructions[0].filter[] run function bot:parser/root/matched