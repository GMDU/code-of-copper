function bot:interpreter/evaluate/function/builtin/lower/encode

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/lower/iterate