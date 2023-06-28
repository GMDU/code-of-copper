execute if data storage bot:interpreter evaluate.current{variant:"array"} run function bot:interpreter/evaluate/literal/array/init
execute if data storage bot:interpreter evaluate.current{variant:"string"} run function bot:interpreter/evaluate/literal/string/init
execute if data storage bot:interpreter evaluate.current{variant:"variable"} run function bot:interpreter/evaluate/literal/variable/init
execute if data storage bot:interpreter evaluate.current{variant:"function"} run function bot:interpreter/evaluate/literal/function/init
execute if data storage bot:interpreter evaluate.current{variant:"object"} run function bot:interpreter/evaluate/literal/object/init
execute if data storage bot:interpreter evaluate.current{variant:"regex"} run function bot:interpreter/evaluate/literal/regex/init
execute if data storage bot:interpreter evaluate.current{variant:"resource"} run function bot:interpreter/evaluate/literal/resource/init