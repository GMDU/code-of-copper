data modify storage bot:variables temp set from storage bot:variables container
execute store result score .no_match bot.execution.variables run data modify storage bot:variables temp set from entity @s Item.id
execute if score .no_match bot.execution.variables matches 0 run tag @s add bot.match
