execute unless data storage bot:parser stack[-1].instructions run function bot:parser/root/definitions

data modify storage bot:parser consumed set value true

data modify storage bot:parser/root/filter target set from storage bot:parser stack[-1].instructions
function bot:parser/root/filter/init
data modify storage bot:parser stack[-1].instructions set from storage bot:parser/root/filter output

execute unless data storage bot:parser/root/filter output[{}] run data modify storage bot:parser raise set value '{"text":"[Root - Instruction]: Invalid instruction at \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'

execute store result score $parse bot.parser.root run data get storage bot:parser/root/filter output[0].filter
execute if score $parse bot.parser.root matches 0 run function bot:parser/root/matched
