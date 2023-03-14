data modify storage regex:parser target set from storage bot:interpreter/evaluate stack[-1].value
data modify storage regex:api/match flags set value {process_pattern: false}
function regex:parser/init
data remove storage regex:api/match flags
data modify storage bot:io Out set from storage regex:parser output
data modify storage bot:io Out.source_string set from storage bot:interpreter/evaluate stack[-1].value

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: parsing regex ", "color": "green"},{"nbt":"stack[-1].value", "storage": "bot:interpreter/evaluate","interpret": true,"color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "output", "storage": "regex:parser", "color": "yellow"}]'
