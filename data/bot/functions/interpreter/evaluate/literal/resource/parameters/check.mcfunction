data modify storage bot:interpreter temp.target set value [n,a,m,e,s,p,a,c,e]
execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.target set from storage bot:interpreter evaluate.result.value
execute if score $check bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.parameters.result set value {type:"literal",variant:"string",value:[]}
execute if score $check bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.parameters.result.value set from storage bot:interpreter evaluate.stack[-1].namespace
execute if score $check bot.interpreter matches 0 run return -1

data modify storage bot:interpreter temp.target set value [i,d]
execute store result score $check bot.interpreter run data modify storage bot:interpreter temp.target set from storage bot:interpreter evaluate.result.value
execute if score $check bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.parameters.result set value {type:"literal",variant:"string",value:[]}
execute if score $check bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.parameters.result.value set from storage bot:interpreter evaluate.stack[-1].id
execute if score $check bot.interpreter matches 0 run return -1
