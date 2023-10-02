data modify storage bot:parser expression.current set from storage bot:parser stack[-1].metadata.status
execute if data storage bot:parser expression{current:"prefix"} run function bot:parser/parse/expression/operator/prefix/init
execute if data storage bot:parser expression{current:"literal"} run function bot:parser/parse/expression/type
execute if data storage bot:parser expression{current:"infix"} run function bot:parser/parse/expression/operator/infix/init