data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser parent{subtype:"action"} run function bot:parser/parse/instruction/action/init
execute if data storage bot:parser parent{subtype:"assign"} run function bot:parser/parse/instruction/assign/init
execute if data storage bot:parser parent{subtype:"command"} run function bot:parser/parse/instruction/command/init
execute if data storage bot:parser parent{subtype:"control"} run function bot:parser/parse/instruction/control/init
execute if data storage bot:parser parent{subtype:"func"} run function bot:parser/parse/instruction/func/init
execute if data storage bot:parser parent{subtype:"keyword"} run function bot:parser/parse/instruction/keyword/init
