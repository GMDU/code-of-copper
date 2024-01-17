data modify storage bot:interpreter temp.split.separator set from storage bot:interpreter evaluate.stack[-1].args[1].value
data modify storage bot:api/interpreter/function execute.return.value[-1].value append from storage bot:interpreter temp.split.checking[0]
data remove storage bot:interpreter temp.split.checking[0]
data modify storage bot:interpreter evaluate.stack[-1].args[0].value prepend from storage bot:interpreter temp.split.checking[]
data modify storage bot:interpreter temp.split.checking set value []
