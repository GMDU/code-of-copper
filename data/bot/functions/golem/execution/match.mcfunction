data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate

data modify storage regex:api/match pattern set from storage bot:io Out

data modify storage bot:io In set from storage bot:program Current.args[1]
function bot:golem/evaluate

data modify storage regex:api/match target set from storage bot:io Out.value

data modify storage regex:api/match flags set value {process_target: false, parse: false}

function regex:api/match

data modify storage bot:variables varName set value ["M","A","T","C","H"]
data modify storage bot:variables value set value {type: "string", value: []}
data modify storage bot:variables value.value set from storage regex:api/match output
function bot:golem/execution/let/set_variable
