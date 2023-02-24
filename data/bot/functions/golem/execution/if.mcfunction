#condition
data modify storage bot:io In set from storage bot:interpreter/execution Current.args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out.value

#codeBlock
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.instructions[-1].value[0]
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions append from storage bot:interpreter/execution Current.args[1]
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].value prepend value {}
