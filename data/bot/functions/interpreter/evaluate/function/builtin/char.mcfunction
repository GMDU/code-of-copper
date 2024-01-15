data modify storage moxlib:api/string/ascii/decode target set from storage bot:interpreter evaluate.stack[-1].args[0].value
function moxlib:api/string/ascii/decode
data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value append from storage moxlib:api/string/ascii/decode output
