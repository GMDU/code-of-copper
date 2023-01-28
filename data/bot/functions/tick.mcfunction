execute as @a run function bot:player
execute as @e[type=marker,tag=bot.block_to_be_placed,scores={bot.execution.cooldown=1..}] at @s run setblock ~ ~ ~ command_block{Command:"function bot:golem/execution/place/block/cleanup",auto:1b}
kill @e[type=marker,tag=bot.block_to_be_placed,scores={bot.execution.cooldown=1..}]
scoreboard players add @e[type=marker,tag=bot.block_to_be_placed] bot.execution.cooldown 1
execute if data storage bot:variables RunRootStack[-1].value[0] run function bot:golem/run_root_type
