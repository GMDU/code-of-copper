data modify storage bot:interpreter evaluate.replace set from storage bot:interpreter temp.proc.value
data modify storage bot:interpreter evaluate.return_value set value {type:"undefined",value: false}

execute if data storage bot:interpreter evaluate.stack[-1].args[] run function bot:interpreter/evaluate/function/proc/set_args/init
