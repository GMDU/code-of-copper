data modify entity @s data.interpreter.evaluate.stack set value []
data modify entity @s data.interpreter.evaluate.stack append from entity @s data.compiled
data modify entity @s data.interpreter.variables set value []
data modify entity @s data.interpreter.scope set value 0
execute if data entity @s data.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution