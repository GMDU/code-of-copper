execute unless data storage bot:parser stack[-1].metadata{status:"operator"} run function bot:parser/parse/expression/type
execute if data storage bot:parser stack[-1].metadata{status:"operator"} run function bot:parser/parse/expression/operator