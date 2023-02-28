data modify storage regex:api/match pattern set from storage bot:interpreter/execution Current.args[0]
data modify storage regex:api/match target set from storage bot:interpreter/execution Current.args[1].value
data modify storage regex:api/match flags set value {process_target: false, parse: false}
function regex:api/match

data modify storage bot:interpreter/execution varName set value ["M","A","T","C","H"]
data modify storage bot:interpreter/execution value set value {type: "string", value: []}
data modify storage bot:interpreter/execution value.value set from storage regex:api/match output
function bot:interpreter/execution/let/set_variable
