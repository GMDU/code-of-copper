data modify storage regex:api/match pattern set from storage bot:interpreter/execution current.decoded_args[0]
data modify storage regex:api/match target set from storage bot:interpreter/execution current.decoded_args[1].value
data modify storage regex:api/match flags set value {process_target: false, parse: false}
function regex:api/match

data modify storage bot:dev_mode logs append value '[{"text": "Match: matching regex ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": " with string ", "color": "green"},{"nbt":"current.decoded_args[1]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt":"output", "storage": "regex:api/match","color":"yellow", "interpret": true}]'

data modify storage bot:interpreter/execution varName set value ["M","A","T","C","H"]
data modify storage bot:interpreter/execution value set value {type: "string", value: []}
data modify storage bot:interpreter/execution value.value set from storage regex:api/match output
function bot:interpreter/execution/let/set_variable
