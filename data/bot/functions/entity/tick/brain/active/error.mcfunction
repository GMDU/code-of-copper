data modify storage bot:private temp.golem.status set value "runtime_error"
data modify storage bot:private temp.golem.error set from storage glm:api/interpreter stdio.error[0]
data remove storage bot:private temp.golem.interpreter