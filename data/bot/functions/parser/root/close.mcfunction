data modify storage bot:parser consumed set value true
data remove storage bot:parser stack[-1].instructions
data remove storage bot:parser stack[-1].close
data modify storage bot:parser close set value true