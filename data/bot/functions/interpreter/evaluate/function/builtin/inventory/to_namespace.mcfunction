data modify storage bot:interpreter evaluate.return_value.value[-1].namespace append string storage bot:interpreter temp.inventory_current 0 1
data modify storage bot:interpreter temp.inventory_current set string storage bot:interpreter temp.inventory_current 1
data modify storage bot:interpreter temp.inventory_next set string storage bot:interpreter temp.inventory_current 0 1

execute unless data storage bot:interpreter temp{inventory_next: ":"} run function bot:interpreter/evaluate/function/builtin/inventory/to_namespace