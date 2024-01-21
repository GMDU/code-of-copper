data modify storage bot:private temp.inventory_current set from storage bot:private temp.inventory[0].id
data remove storage bot:private temp.inventory[0]

data modify storage glm:api/interpreter/function execute.return.value append value {type: "literal", variant: "resource", value: true, namespace: [], id: []}

function bot:glm/function/inventory/to_namespace
data modify storage bot:private temp.inventory_current set string storage bot:private temp.inventory_current 1
function bot:glm/function/inventory/to_id

execute if data storage bot:private temp.inventory[] run function bot:glm/function/inventory/iterate