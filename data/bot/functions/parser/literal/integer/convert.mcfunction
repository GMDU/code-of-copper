data modify storage bot:parser stack[-1].status set value "closed"
data modify storage bot:parser/literal current.status set value "closed"

data modify storage moxlib:api/math/array_to_integer target set from storage bot:parser stack[-1].value
function moxlib:api/math/array_to_integer

execute store result score $integer bot.parser.literal run data get storage moxlib:api/math/array_to_integer output

data remove storage bot:parser stack[-1].inverted

execute if data storage bot:parser/literal {current:{inverted:true}} run execute store result storage bot:parser stack[-1].value int -1 run scoreboard players get $integer bot.parser.literal
execute unless data storage bot:parser/literal {current:{inverted:true}} run execute store result storage bot:parser stack[-1].value int 1 run scoreboard players get $integer bot.parser.literal