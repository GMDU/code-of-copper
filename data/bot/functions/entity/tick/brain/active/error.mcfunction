data modify storage bot:private temp.golem.status set value "runtime_error"
data modify storage bot:private temp.golem.error set from storage bot:interpreter error
data remove storage bot:private temp.golem.interpreter.evaluate.stack