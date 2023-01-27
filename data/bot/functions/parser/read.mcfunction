function bot:parser/parse

execute if data storage bot:parser parsed run function bot:parser/append
execute if data storage bot:parser raise run function bot:parser/error