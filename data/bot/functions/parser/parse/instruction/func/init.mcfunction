execute unless data storage bot:parser parent.metadata.status run function bot:parser/parse/instruction/func/before
execute if data storage bot:parser parent.metadata{status:"brackets"} run function bot:parser/parse/instruction/func/brackets
execute if data storage bot:parser parent.metadata{status:"parameters"} run function bot:parser/parse/instruction/func/set_parameter
execute if data storage bot:parser parent.metadata{status:"value"} run function bot:parser/parse/instruction/func/set_block
execute if data storage bot:parser parent.metadata{status:"closed"} run data modify storage bot:parser close set value true