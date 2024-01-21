data modify entity @s data.interpreter set value {stack: [], variables: [], functions: [], scope: 0}
data modify entity @s data.interpreter.stack append from entity @s data.compiled
execute if data entity @s data.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution