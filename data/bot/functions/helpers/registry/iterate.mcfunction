data merge storage bot:helpers/registry {compare:true}

execute store success storage bot:helpers/registry compare byte 1 run data modify storage bot:helpers/registry target[0].filter[0] set from storage bot:helpers/registry key

execute if data storage bot:helpers/registry {compare:false} run function bot:helpers/registry/match

data remove storage bot:helpers/registry target[0]
execute if data storage bot:helpers/registry target[] run function bot:helpers/registry/iterate