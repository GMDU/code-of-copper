data modify storage bot:parser stack[-1].args set value []
execute if data storage bot:parser stack[-1].metadata.parameters[] run function bot:parser/instruction/set_argument
function bot:parser/common/open