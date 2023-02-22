data modify storage bot:interpreter/execution temp set from storage bot:interpreter/execution container
execute store result score .no_match bot.execution.variables run data modify storage bot:interpreter/execution temp set from entity @s Item.id
execute if score .no_match bot.execution.variables matches 0 run tag @s add bot.match
