data modify storage bot:interpreter temp.function.signature set from storage moxlib:api/data/get output
execute if data storage bot:interpreter temp.function.signature{id:"print"} run function bot:interpreter/evaluate/function/builtin/print
execute if data storage bot:interpreter temp.function.signature{id:"random"} run function bot:interpreter/evaluate/function/builtin/random
execute if data storage bot:interpreter temp.function.signature{id:"move"} run function bot:interpreter/evaluate/function/builtin/move/init
execute if data storage bot:interpreter temp.function.signature{id:"sleep"} run function bot:interpreter/evaluate/function/builtin/sleep
execute if data storage bot:interpreter temp.function.signature{id:"getblock"} run function bot:interpreter/evaluate/function/builtin/getblock
execute if data storage bot:interpreter temp.function.signature{id:"match"} run function bot:interpreter/evaluate/function/builtin/match
execute if data storage bot:interpreter temp.function.signature{id:"place"} run function bot:interpreter/evaluate/function/builtin/place/init
execute if data storage bot:interpreter temp.function.signature{id:"pos"} run function bot:interpreter/evaluate/function/builtin/pos
execute if data storage bot:interpreter temp.function.signature{id:"inventory"} run function bot:interpreter/evaluate/function/builtin/inventory/init
execute if data storage bot:interpreter temp.function.signature{id:"time"} run function bot:interpreter/evaluate/function/builtin/time