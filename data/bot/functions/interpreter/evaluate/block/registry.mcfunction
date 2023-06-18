data modify storage moxlib:api/data/collect target set from storage bot:interpreter evaluate.stack[-1].value
data modify storage moxlib:api/data/collect key set value {type:"instruction",variant:"func"}

function moxlib:api/data/collect

data modify storage moxlib:api/data/array/reverse target set from storage moxlib:api/data/collect output.match

function moxlib:api/data/array/reverse

data modify storage bot:interpreter registry.custom prepend from storage moxlib:api/data/array/reverse output[]
data modify storage bot:interpreter evaluate.stack[-1].value set from storage moxlib:api/data/collect output.remain