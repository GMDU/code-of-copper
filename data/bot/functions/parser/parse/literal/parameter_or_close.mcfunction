execute if data storage bot:parser current{value:"["} unless data storage bot:parser stack[-1].metadata{parameter:true} run function bot:parser/parse/literal/set_parameter
execute if data storage bot:parser current{value:"."} unless data storage bot:parser stack[-1].metadata{parameter:true} run function bot:parser/parse/literal/set_dot_parameter

execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/check_close
