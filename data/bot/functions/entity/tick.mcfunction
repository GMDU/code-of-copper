execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} if data entity @s data.RunRootStack[-1].value[0] on vehicle run function bot:golem/run_root_type
