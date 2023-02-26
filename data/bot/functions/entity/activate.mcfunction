data modify entity @s data.RunRootStack append from entity @s data.compiled
data modify entity @s data.variables set value []
execute if data entity @s data.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution