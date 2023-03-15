function bot:parser/parse/block/check_close

execute if data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/block/set_line