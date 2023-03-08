data modify entity @s data.instructions append from entity @s data.compiled
data modify entity @s data.variables set value []
data modify entity @s data.nest_level set value 0
execute if data entity @s data.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution
data modify entity @s data.pipeline_stage set value "decode"
