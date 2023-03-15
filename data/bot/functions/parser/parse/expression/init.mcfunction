function bot:parser/close/check

execute if data storage bot:parser stack[-1].metadata{closed:true} run data modify storage bot:parser close set value true
execute unless data storage bot:parser stack[-1].metadata{closed:true} run function bot:parser/parse/expression/parse