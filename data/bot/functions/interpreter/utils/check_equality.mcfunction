data remove storage bot:interpreter check_equality.a.original_value
data remove storage bot:interpreter check_equality.b.original_value

execute store result score .different bot.interpreter run data modify storage bot:interpreter check_equality.a set from storage bot:interpreter check_equality.b
execute if score .different bot.interpreter matches 0 run data modify storage bot:interpreter check_equality.result set value true
execute if score .different bot.interpreter matches 1 run data modify storage bot:interpreter check_equality.result set value false
