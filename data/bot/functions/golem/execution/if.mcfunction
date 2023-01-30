#condition
data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out.value

#codeBlock
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.RunRootStack[-1].value[0]
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack append from storage bot:program Current.args[1]
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].value prepend value {}
