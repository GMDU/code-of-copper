execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].isLooping set value true
data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.RunRootStack[-1].loops run data modify entity @s data.RunRootStack[-1].loops set from storage bot:io Out.value
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result score .loops bot.execution.variables run data get entity @s data.RunRootStack[-1].loops
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result entity @s data.RunRootStack[-1].loops int 1 run scoreboard players remove .loops bot.execution.variables 1

execute unless score .loops bot.execution.variables matches ..-1 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack append from storage bot:program Current.args[1]
# This gets removed immediately
execute unless score .loops bot.execution.variables matches ..-1 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].value prepend value {}

execute if score .loops bot.execution.variables matches ..0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.RunRootStack[-1].isLooping set value false
