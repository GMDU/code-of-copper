data modify storage bot:interpreter temp.inventory_current set from storage bot:interpreter temp.inventory[0].id
data remove storage bot:interpreter temp.inventory[0]

data modify storage bot:interpreter evaluate.return_value.value append value {type: "literal", variant: "resource", value: true, namespace: [], id: []}

function bot:interpreter/evaluate/function/builtin/inventory/to_namespace
data modify storage bot:interpreter temp.inventory_current set string storage bot:interpreter temp.inventory_current 1
function bot:interpreter/evaluate/function/builtin/inventory/to_id

execute if data storage bot:interpreter temp.inventory[] run function bot:interpreter/evaluate/function/builtin/inventory/iterate