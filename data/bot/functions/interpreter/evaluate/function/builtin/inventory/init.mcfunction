data modify storage bot:interpreter evaluate.return_value set value {type:"literal", variant: "array", value: []}
data modify storage bot:interpreter temp.inventory set from entity @s Items

execute unless data storage bot:interpreter temp.inventory[] run return -1
function bot:interpreter/evaluate/function/builtin/inventory/iterate