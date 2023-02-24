execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].isLooping set value true
data modify storage bot:io In set from storage bot:interpreter/execution Current.args[0]
function bot:interpreter/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out.value
execute if score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].isLooping set value false

execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions append from storage bot:interpreter/execution Current.args[1]
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].value prepend value {}
