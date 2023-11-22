data modify storage moxlib:api/string/to_array target set from storage bot:parser tokenise.target[0]
data remove storage bot:parser tokenise.target[0]
function moxlib:api/string/to_array

data modify storage moxlib:api/string/to_array output append value "^n"
data modify storage bot:parser tokenise.output append from storage moxlib:api/string/to_array output[]
execute if data storage bot:parser tokenise.target[] run function bot:parser/tokenise