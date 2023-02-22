execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.RunRootStack[] run data modify entity @s data.RunRootStack set value []
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"stopped"} run data modify entity @s data.RunRootStack set value []
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} unless data entity @s data.RunRootStack[-1] run function bot:entity/activate

execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} if data entity @s data.RunRootStack[-1] on vehicle run function bot:golem/run_root_type
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"active"} unless data entity @s data.RunRootStack[-1] run data modify entity @s data.status set value "stopped"

execute on passengers as @s[type=text_display,tag=bot.golem.text] run data modify entity @s text set value '{"text": ""}'
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"stopped"} on vehicle on passengers as @s[type=text_display,tag=bot.golem.text] run data modify entity @s text set value '{"text": "Right click to run"}'
execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.compiled on vehicle on passengers as @s[type=text_display,tag=bot.golem.text] run data modify entity @s text set value '{"text": "Right click with a book to give it a program"}'
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"error"} run data modify storage bot:variables error set from entity @s data.error
execute on passengers as @s[type=marker,tag=bot.golem.brain] if data entity @s data{status:"error"} on vehicle on passengers as @s[type=text_display,tag=bot.golem.text] run data modify entity @s text set value '{"nbt":"error","storage":"bot:variables","interpret":true,"color":"red"}'