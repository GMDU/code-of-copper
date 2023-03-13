data modify storage bot:io In set from storage bot:interpreter/evaluate stack[-1].a.value
data modify storage bot:io In2 set from storage bot:interpreter/evaluate stack[-1].b.value
function bot:interpreter/utils/check_equivelence

execute if data storage bot:io {Out:true} run data modify storage bot:io Out set value {type: "boolean", value: false}
execute if data storage bot:io {Out:false} run data modify storage bot:io Out set value {type: "boolean", value: true}

data modify storage bot:dev_mode logs append value '[{"text": "Evaluate: checking if ", "color": "green"},{"nbt":"stack[-1].a", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": " is not equal to ", "color": "green"},{"nbt":"stack[-1].b", "storage": "bot:interpreter/evaluate","color":"yellow"},{"text": ", got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'
