function bot:parser/parse/expression/check_close
execute if data storage bot:parser {close:true} run data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser {close:true} unless data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser stack[-1].metadata.status set value "literal"