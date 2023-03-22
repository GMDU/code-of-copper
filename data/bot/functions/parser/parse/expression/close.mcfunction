data modify storage bot:parser close set value true
execute unless data storage bot:parser stack[-1].value[1] run function bot:parser/parse/expression/replace_single