data modify storage bot:parser current.value set from storage bot:parser iterate.target[0]
data remove storage bot:parser iterate.target[0]

tellraw @s "tick"

function bot:parser/characters/check
execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/init
tellraw @s {"storage":"bot:parser","nbt":"current"}

data merge storage bot:parser {current:{consumed:false,flags:[]},temp:{}}
execute if data storage bot:parser iterate.target[] if data storage bot:parser {raise:""} run function bot:parser/iterate