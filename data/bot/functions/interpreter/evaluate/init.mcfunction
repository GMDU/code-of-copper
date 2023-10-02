data modify storage bot:interpreter evaluate.current set from storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate merge value {break:false,loop:false}

execute if data storage bot:interpreter evaluate.current{type:"block"} run function bot:interpreter/evaluate/block/init
execute if data storage bot:interpreter evaluate.current{type:"literal"} run function bot:interpreter/evaluate/literal/init
execute if data storage bot:interpreter evaluate.current{type:"expression"} run function bot:interpreter/evaluate/expression/init
execute if data storage bot:interpreter evaluate.current{type:"binary_operation"} run function bot:interpreter/evaluate/binary_operation/init
execute if data storage bot:interpreter evaluate.current{type:"unary_operation"} run function bot:interpreter/evaluate/unary_operation/init
execute if data storage bot:interpreter evaluate.current{type:"function"} run function bot:interpreter/evaluate/function/init
execute if data storage bot:interpreter evaluate.current{type:"instruction"} run function bot:interpreter/evaluate/instruction/init

execute if data storage bot:interpreter error run return -1

execute unless data storage bot:interpreter evaluate.next unless data storage bot:interpreter evaluate{loop:true} run function bot:interpreter/evaluate/close
execute if data storage bot:interpreter evaluate.replace run data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.replace
execute if data storage bot:interpreter evaluate.next run function bot:interpreter/evaluate/next

execute if data storage bot:interpreter evaluate{break:true} run return -1

execute if data storage bot:interpreter evaluate.stack[] run function bot:interpreter/evaluate/init
