data modify storage bot:api/interpreter/function execute.return.value[-1].id append string storage bot:interpreter temp.inventory_current 0 1
data modify storage bot:interpreter temp.inventory_current set string storage bot:interpreter temp.inventory_current 1

execute unless data storage bot:interpreter temp{inventory_current: ""} run function bot:interpreter/evaluate/function/builtin/inventory/to_id