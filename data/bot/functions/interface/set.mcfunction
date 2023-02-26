execute if data storage bot:temp golem{status:"compile"} if data entity @s data.input run function bot:interface/check_compile
execute if data storage bot:temp golem{status:"deoxidise"} run function bot:interface/check_oxidise
execute if data storage bot:temp golem{waxed:true} run function bot:interface/set_waxed

data modify entity @s data merge from storage bot:temp golem