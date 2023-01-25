data modify storage bot:parser current set from storage bot:parser/iterate target[0]
data remove storage bot:parser/iterate target[0]

function bot:parser/parse

execute if data storage bot:parser raise run function bot:parser/error

execute store result score $size bot.parser.iterate run data get storage bot:parser/iterate target
execute if score $size bot.parser.iterate matches 1.. run function bot:parser/iterate