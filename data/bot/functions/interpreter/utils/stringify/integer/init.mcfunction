$data modify storage moxlib:api/string/to_array target set value "$(value)"
function moxlib:api/string/to_array
data modify storage bot:interpreter utils.stringify.result append from storage moxlib:api/string/to_array output[]