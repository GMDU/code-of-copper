data remove storage bot:parser expression.type

function bot:parser/parse/expression/type/array
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/object
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/string
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/regex
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/expression
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/integer
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/alphanumeric
execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/resource

execute unless data storage bot:parser expression.type run function bot:parser/parse/expression/type/error
execute if data storage bot:parser expression.type run data modify storage bot:parser stack append from storage bot:parser expression.type