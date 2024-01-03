data modify storage bot:interpreter temp.function.arg set from storage bot:interpreter evaluate.stack[-1].args[2]
execute if data storage bot:interpreter temp.function.arg{type:"literal", variant:"proc"} run return -1

data modify storage bot:interpreter error set value '{"text":"RuntimeError: Invalid third argument in function \'reduce\', expected type \'proc\'."}'