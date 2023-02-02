execute unless data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/common/close
execute if data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/instruction/set_argument
execute if data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/common/open