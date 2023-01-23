data modify storage moxlib:api/string/to_array target set from storage bot:parser/tokenise target[0]
data remove storage bot:parser/tokenise target[0]
function moxlib:api/string/to_array

data modify storage bot:parser/tokenise output append from storage moxlib:api/string/to_array output[]

execute store result score $size bot.parser.tokenise run data get storage bot:parser/tokenise target
execute if score $size bot.parser.tokenise matches 1.. run function bot:parser/tokenise