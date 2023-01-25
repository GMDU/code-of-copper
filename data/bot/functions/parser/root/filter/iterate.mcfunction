data modify storage bot:parser/root/filter current set from storage bot:parser/root/filter target[0]
data remove storage bot:parser/root/filter target[0]

data modify storage bot:helpers/compare target set from storage bot:parser/root/filter current.filter[0]
data modify storage bot:helpers/compare source set from storage bot:parser current

function bot:helpers/compare

execute if data storage bot:helpers/compare {output:true} run function bot:parser/root/filter/match
execute if data storage bot:helpers/compare {output:false} if data storage bot:parser {current: " "} run function bot:parser/root/filter/allow
execute if data storage bot:helpers/compare {output:false} if data storage bot:parser {current: "^n"} run function bot:parser/root/filter/allow

execute store result score $filter bot.parser.root run data get storage bot:parser/root/filter target
execute if score $filter bot.parser.root matches 1.. run function bot:parser/root/filter/iterate