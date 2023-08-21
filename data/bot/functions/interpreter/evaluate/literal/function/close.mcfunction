data modify storage bot:interpreter evaluate.return_value.parameters set from storage bot:interpreter evaluate.stack[-1].parameters

execute if data storage bot:interpreter evaluate.return_value.parameters[] run data modify storage bot:interpreter evaluate.replace set from storage bot:interpreter evaluate.return_value
execute unless data storage bot:interpreter evaluate.return_value.parameters[] run data modify storage bot:interpreter evaluate.stack[-1] set from storage bot:interpreter evaluate.return_value