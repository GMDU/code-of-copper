data modify storage bot:interpreter evaluate.current set from storage bot:interpreter evaluate.stack[-1]

execute if data storage bot:interpreter evaluate.current{type:"literal"} run function bot:interpreter/decode/evaluate/literal
execute if data storage bot:interpreter evaluate.current{type:"expression"} run function bot:interpreter/decode/evaluate/expression/init
execute if data storage bot:interpreter evaluate.current{type:"binary_operation"} run function bot:interpreter/decode/evaluate/binary_operation/init

execute if data storage bot:interpreter evaluate{break:true} run return -1

execute unless data storage bot:interpreter evaluate.next run function bot:interpreter/decode/evaluate/close
execute if data storage bot:interpreter evaluate.next run function bot:interpreter/decode/evaluate/next

execute if data storage bot:interpreter evaluate.stack[] run function bot:interpreter/decode/evaluate/init