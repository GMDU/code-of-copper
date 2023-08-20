data modify storage moxlib:api/data/collect target set from entity @s data.compiled.value
data modify storage moxlib:api/data/collect key set value {variant:"func"}
function moxlib:api/data/collect

data modify entity @s data.interpreter.functions set from storage moxlib:api/data/collect output.match

data modify entity @s data.compiled.value set from storage moxlib:api/data/collect output.remain
data modify entity @s data.status set value "stopped"
