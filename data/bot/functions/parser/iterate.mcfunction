data modify storage bot:parser/iterate current set from storage bot:parser/iterate target[0]
data remove storage bot:parser/iterate target[0]

data modify storage bot:parser/iterate parent set from storage bot:parser/iterate stack[-1]

execute if data storage bot:parser/iterate {parent:{type:"instruction"}} run function bot:parser/parse/instruction/init
execute if data storage bot:parser/iterate {parent:{type:"expression"}} run function bot:parser/parse/expression
execute if data storage bot:parser/iterate {parent:{type:"literal"}} run function bot:parser/parse/literal

execute store result score $size bot.parser.iterate run data get storage bot:parser/iterate target
execute if score $size bot.parser.iterate matches 1.. run function bot:parser/iterate