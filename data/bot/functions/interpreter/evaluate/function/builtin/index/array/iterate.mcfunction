data modify storage bot:interpreter check_equality.a set from storage bot:interpreter evaluate.stack[-1].args[1]
data modify storage bot:interpreter check_equality.b set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
function bot:interpreter/utils/check_equality
execute if data storage bot:interpreter check_equality{result:true} store result storage bot:api/interpreter/function execute.return.value int 1 run scoreboard players get $index bot.interpreter
execute if data storage bot:interpreter check_equality{result:true} run return -1

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
scoreboard players add $index bot.interpreter 1
execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/index/array/iterate
