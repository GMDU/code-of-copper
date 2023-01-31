execute unless data storage bot:parser/literal current.metadata.status run function bot:parser/literal/array/before
execute if data storage bot:parser/literal {current:{status:"open"}} run function bot:parser/literal/array/open
execute if data storage bot:parser/literal {current:{status:"closed"}} run function bot:parser/common/close