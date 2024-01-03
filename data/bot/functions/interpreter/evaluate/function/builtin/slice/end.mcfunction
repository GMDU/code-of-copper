execute store result score $slice_start bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value
execute store result score $slice_end bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[2].value

execute store result storage moxlib:api/data/array/slice end int 1 run scoreboard players operation $slice_end bot.interpreter += $slice_start bot.interpreter