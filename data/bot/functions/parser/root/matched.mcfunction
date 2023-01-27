data modify storage bot:parser/root match set from storage bot:parser/root/filter output[0]

execute if data storage bot:parser/root match.action run function bot:parser/root/action
execute unless data storage bot:parser/root match.action run function bot:parser/root/set_instruction