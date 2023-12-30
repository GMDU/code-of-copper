data modify storage bot:interpreter evaluate.break set value true
execute if data storage bot:interpreter evaluate.current{variant:"builtin"} run function bot:interpreter/evaluate/function/builtin/init
execute if data storage bot:interpreter evaluate.current{variant:"proc"} run function bot:interpreter/evaluate/function/proc/init
execute if data storage bot:interpreter evaluate.current{variant:"custom"} run function bot:interpreter/evaluate/function/custom/init