execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].isLooping set value true
data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out.value
execute if score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].isLooping set value false

execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack append from storage bot:program Current.args[1]
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].value prepend value {}
