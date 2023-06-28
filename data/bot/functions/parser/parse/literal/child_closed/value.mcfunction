data modify storage bot:parser parent set from storage bot:parser stack[-1]
execute if data storage bot:parser parent{variant:"array"} run function bot:parser/parse/literal/array/child_closed
execute if data storage bot:parser parent{variant:"function"} run function bot:parser/parse/literal/function/child_closed
execute if data storage bot:parser parent{variant:"object"} run function bot:parser/parse/literal/object/child_closed
execute if data storage bot:parser parent{variant:"resource"} run function bot:parser/parse/literal/resource/child_closed