data modify storage regex:api/match pattern set from storage bot:interpreter evaluate.stack[-1].args[0].value
data modify storage regex:api/match target set from storage bot:interpreter evaluate.stack[-1].args[1].value
data modify storage regex:api/match flags set value {process_target: false, parse: false}
function regex:api/match

data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value set from storage regex:api/match output
