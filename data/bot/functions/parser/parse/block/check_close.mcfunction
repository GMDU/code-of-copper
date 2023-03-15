
function bot:parser/close/check
execute if data storage bot:parser stack[-1].metadata.close{closed:true} run function bot:parser/parse/block/close