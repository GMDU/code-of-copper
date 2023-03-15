function bot:parser/parse/expression/check_close
execute unless data storage bot:parser {close:true} run data modify storage bot:parser current.consumed set value true