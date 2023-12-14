data modify storage bot:interpreter evaluate.return_value set value {type: "literal", variant: "string", value: [u,n,d,e,f,i,n,e,d]}
data modify storage moxlib:api/string/to_array target set value ""
data modify storage moxlib:api/string/to_array target set from storage bot:interpreter evaluate.stack[-1].args[0].variant
function moxlib:api/string/to_array


execute if data storage moxlib:api/string/to_array output[] run data modify storage bot:interpreter evaluate.return_value.value set from storage moxlib:api/string/to_array output
