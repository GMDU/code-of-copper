data modify storage bot:interpreter evaluate.current set from storage bot:interpreter evaluate.stack[-1]
execute if data storage bot:interpreter evaluate.current{type:"literal",variant:"array"} run function bot:interpreter/decode/evaluate/array/init
execute if data storage bot:interpreter evaluate.current{type:"literal",variant:"object"} run function bot:interpreter/decode/evaluate/object/init
execute if data storage bot:interpreter evaluate.current{type:"literal",variant:"regex"} run function bot:interpreter/decode/evaluate/regex/init

execute unless data storage bot:interpreter evaluate.next run function bot:interpreter/decode/evaluate/close
execute if data storage bot:interpreter evaluate.next run function bot:interpreter/decode/evaluate/next