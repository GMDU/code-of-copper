data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser parent{type:"block"} run function bot:parser/parse/block/init
execute if data storage bot:parser parent{type:"expression"} run function bot:parser/parse/expression/init
execute if data storage bot:parser parent{type:"instruction"} run function bot:parser/parse/instruction/init
execute if data storage bot:parser parent{type:"line"} run function bot:parser/parse/line/init
execute if data storage bot:parser parent{type:"literal"} run function bot:parser/parse/literal/init

execute if data storage bot:parser {close:true} run function bot:parser/close/perform

execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/init