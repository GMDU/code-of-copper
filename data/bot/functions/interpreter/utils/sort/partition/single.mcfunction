execute store result score $current bot.utils.sort run data get storage bot:utils sort.stack[-1].target[0]

$function $(callback)
execute if data storage bot:utils sort.break run return -1

execute if score $result bot.utils.sort matches 1.. run data modify storage bot:utils sort.stack[-1].value[-1].target append from storage bot:utils sort.stack[-1].target[0]
execute if score $result bot.utils.sort matches ..0 run data modify storage bot:utils sort.stack[-1].value[0].target append from storage bot:utils sort.stack[-1].target[0]