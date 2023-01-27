execute unless data storage bot:parser/literal current.status run function bot:parser/literal/integer/before
execute if data storage bot:parser/literal {current:{status:"open"}} run function bot:parser/literal/integer/open
execute if data storage bot:parser/literal {current:{status:"convert"}} run function bot:parser/literal/integer/convert
execute if data storage bot:parser/literal {current:{status:"closed"}} run function bot:parser/literal/close/init