data modify storage bot:parser close set value true
data modify storage bot:parser parent set from storage bot:parser stack[-1]
execute unless data storage bot:parser parent.value[1] if data storage bot:parser parent.value[0] run function bot:parser/parse/expression/replace/single
execute unless data storage bot:parser parent.value[0] run function bot:parser/parse/expression/replace/empty