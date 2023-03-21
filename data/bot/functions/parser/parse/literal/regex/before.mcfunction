execute if data storage bot:parser stack[-1].metadata{type:"single"} unless data storage bot:parser current{value:"'"} run data modify storage bot:parser raise set value '["[String] Unexpected: \'",{"storage":"bot:parser","nbt":"current.value"},"\', expected \'."]'
execute if data storage bot:parser stack[-1].metadata{type:"double"} unless data storage bot:parser current{value:"\""} run data modify storage bot:parser raise set value '["[String] Unexpected: \'",{"storage":"bot:parser","nbt":"current.value"},"\', expected \\"."]'

data modify storage bot:parser current.consumed set value true
data modify storage bot:parser stack[-1].metadata.status set value "open"