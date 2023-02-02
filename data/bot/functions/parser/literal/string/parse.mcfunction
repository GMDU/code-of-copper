tellraw @s "parse string"
execute unless data storage bot:parser/literal current.metadata.status run function bot:parser/literal/string/before
execute if data storage bot:parser/literal {current:{metadata:{status:"open"}}} run function bot:parser/literal/string/open
execute if data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/literal/close/init