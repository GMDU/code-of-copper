data modify storage bot:parser current set from storage bot:parser/iterate target[0]
data remove storage bot:parser/iterate target[0]

function bot:parser/newline
function bot:parser/comment
execute unless data storage bot:parser {comment:true} run function bot:parser/read

execute store result score $size bot.parser.iterate run data get storage bot:parser/iterate target
execute if score $size bot.parser.iterate matches 1.. run function bot:parser/iterate