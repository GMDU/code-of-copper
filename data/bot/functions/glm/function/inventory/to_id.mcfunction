data modify storage glm:api/interpreter/function execute.return.value[-1].id append string storage bot:private temp.inventory_current 0 1
data modify storage bot:private temp.inventory_current set string storage bot:private temp.inventory_current 1

execute unless data storage bot:private temp{inventory_current: ""} run function bot:glm/function/inventory/to_id