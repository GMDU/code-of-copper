execute store result score $current bot.utils.sort run data get storage bot:utils sort.stack[-1].target[0].value
execute store result score $pivot bot.utils.sort run data get storage bot:utils sort.stack[-1].pivot.value

execute if score $current bot.utils.sort > $pivot bot.utils.sort run scoreboard players set $result bot.utils.sort 1
execute if score $current bot.utils.sort <= $pivot bot.utils.sort run scoreboard players set $result bot.utils.sort -1