data modify storage moxlib:api/data/get target set from entity @s data.variables
data modify storage moxlib:api/data/get key set value {name:[""]}
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter/evaluate stack[-1].value
function moxlib:api/data/get

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Evaluate: evaluating variable ", "color": "green"},{"nbt":"stack[-1].value", "storage": "bot:interpreter/evaluate"},{"text": ", got ", "color": "green"},{"nbt": "{}", "storage": "moxlib:api/data/get", "color": "yellow"}]

execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:io Out set from storage moxlib:api/data/get output.value
execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:io Out set value {"type": "undefined", value: undefined}
