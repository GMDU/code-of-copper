function bot:interpreter/execution/place/container/find_container

setblock ~ ~ ~ air destroy

execute as @e[type=item,distance=..1,nbt={Item:{Count:1b}}] run function bot:interpreter/execution/place/container/check_if_matches

kill @e[type=item,tag=bot.match,sort=nearest,limit=1]

tag @e[type=item,tag=bot.match] remove bot.match
