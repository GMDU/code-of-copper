data modify storage bot:io In set from storage bot:interpreter/evaluate stack[-1].a.value
data modify storage bot:io In2 set from storage bot:interpreter/evaluate stack[-1].b.value
function bot:interpreter/utils/check_equivelence
data modify storage bot:interpreter Equal set from storage bot:io Out
data modify storage bot:io Out set value {type: "boolean", value: false}
data modify storage bot:io Out.value set from storage bot:interpreter Equal

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: checking if ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " is equal to ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
