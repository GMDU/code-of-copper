data modify storage bot:parser stack[-1].status set value "closed"
data modify storage bot:parser/literal current.status set value "closed"

data modify storage moxlib:api/math/array_to_integer target set from storage bot:parser stack[-1].value
function moxlib:api/math/array_to_integer

data modify storage bot:parser stack[-1].value set from storage moxlib:api/math/array_to_integer output