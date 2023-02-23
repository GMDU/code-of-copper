data modify storage bot:parser current set from storage bot:parser/iterate target[0]
data remove storage bot:parser/iterate target[0]

data remove storage bot:parser consumed

function bot:parser/escape
execute unless data storage bot:parser {escape_status:"new"} run function bot:parser/newline
execute unless data storage bot:parser {escape_status:"new"} run function bot:parser/comment
execute unless data storage bot:parser {comment:true} unless data storage bot:parser {escape_status:"new"} run function bot:parser/parse

execute if data storage bot:parser/iterate target[] unless data storage bot:parser raise run function bot:parser/iterate