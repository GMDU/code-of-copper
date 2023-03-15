function bot:parser/characters/escape
execute unless data storage bot:parser current{flags:["meta"]} run function bot:parser/characters/whitespace
execute unless data storage bot:parser current{flags:["meta"]} run function bot:parser/characters/newline
execute unless data storage bot:parser current{flags:["meta"]} run function bot:parser/characters/comment

execute if data storage bot:parser current{comment:true} run data modify storage bot:parser current.consumed set value true