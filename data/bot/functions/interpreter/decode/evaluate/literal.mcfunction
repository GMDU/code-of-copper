execute if data storage bot:interpreter evaluate.current{variant:"array"} run function bot:interpreter/decode/evaluate/array/init
execute if data storage bot:interpreter evaluate.current{variant:"string"} run function bot:interpreter/decode/evaluate/string/init
execute if data storage bot:interpreter evaluate.current{variant:"variable"} run function bot:interpreter/decode/evaluate/variable/init
execute if data storage bot:interpreter evaluate.current{variant:"function"} run function bot:interpreter/decode/evaluate/function/init
execute if data storage bot:interpreter evaluate.current{variant:"object"} run function bot:interpreter/decode/evaluate/object/init
execute if data storage bot:interpreter evaluate.current{variant:"regex"} run function bot:interpreter/decode/evaluate/regex/init