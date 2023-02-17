data modify storage bot:parser/literal parent set from storage bot:parser stack[-1]
execute if data storage bot:parser/literal {parent:{variant:"array"}} run function bot:parser/literal/array/append
execute if data storage bot:parser/literal {parent:{variant:"object"}} run function bot:parser/literal/object/append