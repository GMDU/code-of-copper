execute unless data storage bot:interpreter evaluate.stack[-1].args[1] run return -1
data modify storage bot:interpreter temp.function.arg set from storage bot:interpreter evaluate.stack[-1].args[1]
execute if data storage bot:interpreter temp.function.arg{type:"literal", variant:"string"} run return -1

data modify storage bot:interpreter error set value '{"text":"RuntimeError: Invalid second argument in function \'join\', expected type \'string\'."}'