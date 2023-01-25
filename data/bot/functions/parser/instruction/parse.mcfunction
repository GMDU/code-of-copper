execute if data storage bot:parser parsed run function bot:parser/instruction/append
execute if data storage bot:parser stack[-1].parameters[{}] run function bot:parser/instruction/set_argument
execute unless data storage bot:parser stack[-1].parameters[{}] run function bot:parser/common/close