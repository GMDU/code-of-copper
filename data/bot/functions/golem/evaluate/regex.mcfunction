data modify storage regex:parser target set from storage bot:variables stack[-1].value
data modify storage regex:api/match flags set value {process_pattern: false}
function regex:parser/init
data modify storage bot:io Out set from storage regex:parser output
data modify storage bot:io Out.source_string set from storage bot:variables stack[-1].value
