execute store result score $a bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[0].value
execute store result score $b bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value

execute if score $a bot.interpreter < $b bot.interpreter run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].args[0]
execute unless score $a bot.interpreter < $b bot.interpreter run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].args[1]
