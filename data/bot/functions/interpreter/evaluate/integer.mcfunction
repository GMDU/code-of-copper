data modify storage bot:io Out set value {type: "integer", value: 0}
data modify storage bot:io Out.value set from storage bot:interpreter/evaluate stack[-1].value

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: evaluating integer ", "color": "green"},{"nbt":"stack[-1].value", "storage": "bot:interpreter/evaluate","color":"yellow"}]'
