function bot:parser/close/check
execute if data storage bot:parser stack[-1].metadata{close:{closed:true,consume:true}} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser stack[-1].metadata{close:{closed:true}} run function bot:parser/parse/expression/close