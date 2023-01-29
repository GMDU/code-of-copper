execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.RunRootStack[] run data modify entity @s data.RunRootStack set value []
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} unless data entity @s data.RunRootStack[-1].value[0] run data modify entity @s data.RunRootStack append from entity @s data.compiled
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"stopped"} run data modify entity @s data.RunRootStack set value []

execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} if data entity @s data.RunRootStack[-1].value[0] on vehicle run function bot:golem/run_root_type
