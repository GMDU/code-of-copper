execute unless data storage bot:parser/literal current.status run function bot:parser/literal/variable/before
execute if data storage bot:parser/literal {current:{status:"open"}} run function bot:parser/literal/variable/open
execute if data storage bot:parser/literal {current:{status:"closed"}} run function bot:parser/literal/close/init