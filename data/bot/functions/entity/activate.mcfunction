data modify entity @s data.interpreter.instructions set value []
data modify entity @s data.interpreter.instructions append from entity @s data.compiled
data modify entity @s data.interpreter merge value {variables:[],nest_level:0,pipeline_stage:"decode"}
execute if data entity @s data.compiled on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/first_execution