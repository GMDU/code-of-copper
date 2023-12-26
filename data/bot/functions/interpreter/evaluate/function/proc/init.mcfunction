data modify storage bot:interpreter temp.proc set from storage moxlib:api/data/get output.value
execute if data storage bot:interpreter temp.proc.value{variant:"alphanumeric"} run function bot:interpreter/evaluate/function/proc/alphanumeric
execute if data storage bot:interpreter temp.proc.value{variant:"alphanumeric"} run return -1
