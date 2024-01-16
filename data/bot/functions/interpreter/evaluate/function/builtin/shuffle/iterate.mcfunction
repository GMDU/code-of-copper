execute store result score $index bot.interpreter run random value 0..2147483646
execute store result score $count bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[0].value

scoreboard players operation $index bot.interpreter %= $count bot.interpreter

execute store result storage bot:interpreter temp.macro.index int 1 run scoreboard players get $index bot.interpreter

function bot:interpreter/evaluate/function/builtin/shuffle/macro with storage bot:interpreter temp.macro

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/shuffle/iterate