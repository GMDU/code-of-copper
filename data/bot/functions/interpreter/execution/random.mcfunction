# random (min, max) = RANDOM_NUMBER % (max - min + 1) + min

execute store result score .min bot.execution.variables run data get storage bot:interpreter/execution current.decoded_args[0].value
execute store result score .max bot.execution.variables run data get storage bot:interpreter/execution current.decoded_args[1].value

function moxlib:api/math/random

# max - min + 1
scoreboard players set .mod bot.execution.variables 1
scoreboard players operation .mod bot.execution.variables += .max bot.execution.variables
scoreboard players operation .mod bot.execution.variables -= .min bot.execution.variables

scoreboard players operation .result bot.execution.variables = $rng moxlib.api.math.random
scoreboard players operation .result bot.execution.variables %= .mod bot.execution.variables
scoreboard players operation .result bot.execution.variables += .min bot.execution.variables

data modify entity @s data.return_value set value {type: "integer", value: 0}
execute store result entity @s data.return_value.value int 1 run scoreboard players get .result bot.execution.variables

data modify storage bot:dev_mode logs append value '[{"text": "Random: generating random number between ","color":"green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": " and ","color":"green"},{"nbt":"current.decoded_args[1]", "storage": "bot:interpreter/execution","color":"yellow"},{"text":", got ", "color": "green"},{"nbt":"data.return_value", "entity": "@s","color":"yellow"}]'
