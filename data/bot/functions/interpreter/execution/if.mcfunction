execute store result score .condition bot.execution.variables run data get storage bot:interpreter/execution current.decoded_args[0].value

#codeBlock
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.instructions[-1].value[0]
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions append from storage bot:interpreter/execution current.decoded_args[1]
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/pipeline/execute/add_nesting
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].value prepend value {}
