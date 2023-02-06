execute unless data storage bot:parser stack[-1].metadata.parameters[] run data modify storage bot:parser close set value true
execute if data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/instruction/set_argument
execute if data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/common/open