execute unless data storage bot:parser stack[-1].metadata.status run function bot:parser/parse/literal/integer/before
execute if data storage bot:parser stack[-1].metadata{status:"open"} run function bot:parser/parse/literal/integer/open
execute if data storage bot:parser stack[-1].metadata{status:"convert"} run function bot:parser/parse/literal/integer/convert