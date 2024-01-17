data modify storage bot:interpreter temp.index.match set from storage bot:interpreter evaluate.stack[-1].args[1].value
scoreboard players add $index bot.interpreter 1
data remove storage bot:interpreter temp.index.checking[0]
data modify storage bot:interpreter evaluate.stack[-1].args[0].value prepend from storage bot:interpreter temp.index.checking[]
data modify storage bot:interpreter temp.index.checking set value []
