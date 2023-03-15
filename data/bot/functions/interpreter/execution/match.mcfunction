data modify storage regex:api/match pattern set from storage bot:interpreter/execution current.decoded_args[0]
data modify storage regex:api/match target set from storage bot:interpreter/execution current.decoded_args[1].value
data modify storage regex:api/match flags set value {process_target: false, parse: false}
function regex:api/match

data modify storage bot:dev_mode logs append value '[{"text": "Match: matching regex ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": " with string ", "color": "green"},{"nbt":"current.decoded_args[1]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt":"output", "storage": "regex:api/match","color":"yellow", "interpret": true}]'

execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.return_value set value {type: "string", value: []}
execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.return_value.value set from storage regex:api/match output
