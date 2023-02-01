data modify storage bot:parser/literal parent set from storage bot:parser stack[-1]
execute unless data storage bot:parser/literal {parent:{status:"closed"}} run function bot:parser/literal/append/value
execute if data storage bot:parser/literal {parent:{status:"closed"}} run function bot:parser/literal/append/parameter