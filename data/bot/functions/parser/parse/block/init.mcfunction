function bot:parser/close/init

execute if data storage bot:parser stack[-1].metadata{closed:true} run function bot:parser/parse/block/close
execute unless data storage bot:parser stack[-1].metadata{closed:true} run function bot:parser/parse/block/set_line