execute if data storage bot:parser current{value:"["} run function bot:parser/parse/literal/set_parameter

execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/check_close
