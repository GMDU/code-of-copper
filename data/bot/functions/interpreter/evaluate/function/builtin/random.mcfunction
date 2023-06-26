# random (min, max) = RANDOM_NUMBER % (max - min + 1) + min

execute store result score .min bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[0].value
execute store result score .max bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value

function moxlib:api/math/random

# max - min + 1
scoreboard players set .mod bot.interpreter 1
scoreboard players operation .mod bot.interpreter += .max bot.interpreter
scoreboard players operation .mod bot.interpreter -= .min bot.interpreter

scoreboard players operation .result bot.interpreter = $rng moxlib.api.math.random
scoreboard players operation .result bot.interpreter %= .mod bot.interpreter
scoreboard players operation .result bot.interpreter += .min bot.interpreter

data modify storage bot:interpreter evaluate.return_value set value {type:"literal", variant: "integer", value: 0}
execute store result storage bot:interpreter evaluate.return_value.value int 1 run scoreboard players get .result bot.interpreter