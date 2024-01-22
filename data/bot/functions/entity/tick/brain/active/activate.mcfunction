data modify storage bot:private temp.golem.interpreter.evaluate.stack set value []
data modify storage bot:private temp.golem.interpreter.evaluate.stack append from storage bot:private temp.golem.compiled
data modify storage bot:private temp.golem.interpreter.variables set value []
data modify storage bot:private temp.golem.interpreter.functions set value []
data modify storage bot:private temp.golem.interpreter.scope set value 0
execute if data storage bot:private temp.golem.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution