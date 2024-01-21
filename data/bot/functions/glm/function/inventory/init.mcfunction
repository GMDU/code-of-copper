data modify storage glm:api/interpreter/function execute.return set value {type:"literal", variant: "array", value: []}
data modify storage bot:private temp.inventory set from entity @s Items

execute unless data storage bot:private temp.inventory[] run return -1
function bot:glm/function/inventory/iterate