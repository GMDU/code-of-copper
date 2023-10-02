execute if data storage bot:parser stack[-1].metadata{close_after_literal:true} run function bot:parser/parse/expression/close

execute unless data storage bot:parser {close:true} run function bot:parser/parse/expression/check_close
execute if data storage bot:parser {close:true} run return -1

execute unless data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser stack[-1].metadata.status set value "infix"
data modify storage bot:parser current.consumed set value true