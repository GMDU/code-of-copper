function bot:parser/common/close
function bot:parser/append

execute store result score $stack bot.parser run data get storage bot:parser stack
execute if score $stack bot.parser matches 2.. run function bot:parser/wrapup