execute unless data entity @s data.RunRootStack[-1] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1
execute if data entity @s data.RunRootStack[-1] on vehicle run function bot:golem/run_root_type
execute unless data entity @s data.RunRootStack[-1] run data modify entity @s data.status set value "stopped"