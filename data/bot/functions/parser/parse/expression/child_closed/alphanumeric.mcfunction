data modify storage bot:parser temp.filter set value ["t","r","u","e"]
execute store result score $check bot.parser run data modify storage bot:parser temp.filter set from storage bot:parser parsed.value

execute if score $check bot.parser matches 0 run data modify storage bot:parser parsed set value {type:"literal",variant:"boolean",value:true}
execute if score $check bot.parser matches 0 run return -1

data modify storage bot:parser temp.filter set value ["f","a","l","s","e"]
execute store result score $check bot.parser run data modify storage bot:parser temp.filter set from storage bot:parser parsed.value

execute if score $check bot.parser matches 0 run data modify storage bot:parser parsed set value {type:"literal",variant:"boolean",value:false}
execute if score $check bot.parser matches 0 run return -1

data modify storage bot:parser parsed.variant set value "variable"
