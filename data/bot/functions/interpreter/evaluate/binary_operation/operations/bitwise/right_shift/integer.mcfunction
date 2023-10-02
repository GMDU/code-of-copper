scoreboard players set $target moxlib.api.math.power 2
scoreboard players operation $power moxlib.api.math.power = .b bot.interpreter
function moxlib:api/math/power

data modify storage bot:interpreter evaluate.operation.result set value {type: "literal", variant: "integer", value: 0}
execute store result storage bot:interpreter evaluate.operation.result.value int 1 run scoreboard players operation .a bot.interpreter /= $output moxlib.api.math.power