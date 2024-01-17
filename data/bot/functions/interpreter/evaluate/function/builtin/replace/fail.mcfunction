data modify storage bot:interpreter temp.replace.match set from storage bot:interpreter evaluate.stack[-1].args[1].value
data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter temp.replace.checking[0]
data remove storage bot:interpreter temp.replace.checking[0]
data modify storage bot:interpreter evaluate.stack[-1].args[0].value prepend from storage bot:interpreter temp.replace.checking[]
data modify storage bot:interpreter temp.replace.checking set value []
