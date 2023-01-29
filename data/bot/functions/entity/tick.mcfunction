execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.RunRootStack[] run data modify entity @s data.RunRootStack set value []
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"stopped"} run data modify entity @s data.RunRootStack set value []
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} unless data entity @s data.RunRootStack[-1].value[0] run data modify entity @s data.RunRootStack append from entity @s data.compiled

execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} if data entity @s data.RunRootStack[-1].value[0] on vehicle run function bot:golem/run_root_type
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} unless data entity @s data.RunRootStack[-1].value[0] run data modify entity @s data.status set value "stopped"

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.compiled on vehicle on passengers as @s[type=armor_stand,tag=bot.golem.display] run data modify entity @s CustomName set value '{"text": "Right click with a book to give it a program"}'
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"stopped"} on vehicle on passengers as @s[type=armor_stand,tag=bot.golem.display] run data modify entity @s CustomName set value '{"text": "Shift right click to start"}'
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} on vehicle on passengers as @s[type=armor_stand] run data modify entity @s CustomName set value '{"text": ""}'
