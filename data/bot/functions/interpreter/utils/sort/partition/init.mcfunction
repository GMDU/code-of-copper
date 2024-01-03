execute unless data storage bot:utils sort.stack[-1].pivot run function bot:interpreter/utils/sort/partition/pivot

execute store result score $pivot bot.utils.sort run data get storage bot:utils sort.stack[-1].pivot

execute if data storage bot:utils sort.stack[-1].target[1] run function bot:interpreter/utils/sort/partition/iterate with storage bot:utils sort
execute unless data storage bot:utils sort.stack[-1].target[1] run function bot:interpreter/utils/sort/partition/iterate with storage bot:utils sort

execute unless data storage bot:utils sort.break run data modify storage bot:utils sort.stack[-1].partitioned? set value true