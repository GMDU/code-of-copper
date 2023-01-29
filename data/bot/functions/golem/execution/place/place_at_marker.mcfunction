execute as @e[type=marker,tag=bot.block_to_be_placed,scores={bot.execution.cooldown=1..}] at @s run function bot:golem/execution/place/block/cleanup
kill @e[type=marker,tag=bot.block_to_be_placed,scores={bot.execution.cooldown=1..}]
scoreboard players add @e[type=marker,tag=bot.block_to_be_placed] bot.execution.cooldown 1