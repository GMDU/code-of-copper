data modify storage bot:interpreter utils.stringify.current set from storage bot:interpreter utils.stringify.stack[-1]

execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"array"} run function bot:interpreter/utils/stringify/array/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"integer"} run function bot:interpreter/utils/stringify/integer/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"boolean"} run function bot:interpreter/utils/stringify/boolean/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"object"} run function bot:interpreter/utils/stringify/object/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"regex"} run function bot:interpreter/utils/stringify/regex/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"resource"} run function bot:interpreter/utils/stringify/resource/init
execute if data storage bot:interpreter utils.stringify.current{type:"literal",variant:"string"} run function bot:interpreter/utils/stringify/string/init
execute if data storage bot:interpreter utils.stringify.current{type:"undefined"} run function bot:interpreter/utils/stringify/undefined/init

data remove storage bot:interpreter utils.stringify.stack[-1]
data remove storage bot:interpreter utils.stringify.current