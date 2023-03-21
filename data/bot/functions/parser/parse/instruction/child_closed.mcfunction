data remove storage bot:parser parsed.metadata
data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser parent{subtype:"assign"} run function bot:parser/parse/instruction/assign/child_closed
execute if data storage bot:parser parent{subtype:"command"} run function bot:parser/parse/instruction/command/child_closed
execute if data storage bot:parser parent{subtype:"control"} run function bot:parser/parse/instruction/control/child_closed
execute if data storage bot:parser parent{subtype:"func"} run function bot:parser/parse/instruction/func/child_closed
