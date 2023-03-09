execute if data storage bot:interpreter/execution current{variant:"move"} run function bot:interpreter/execution/move
execute if data storage bot:interpreter/execution current{variant:"place"} run function bot:interpreter/execution/place
execute if data storage bot:interpreter/execution current{variant:"let"} run function bot:interpreter/execution/let
execute if data storage bot:interpreter/execution current{variant:"print"} run function bot:interpreter/execution/print
execute if data storage bot:interpreter/execution current{variant:"if"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/if
execute if data storage bot:interpreter/execution current{variant:"while"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/while
execute if data storage bot:interpreter/execution current{variant:"getBlock"} run function bot:interpreter/execution/get_block
execute if data storage bot:interpreter/execution current{variant:"sleep"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/sleep
execute if data storage bot:interpreter/execution current{variant:"match"} run function bot:interpreter/execution/match
execute if data storage bot:interpreter/execution current{variant:"loop"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/loop
execute if data storage bot:interpreter/execution current{variant:"break"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/break
execute if data storage bot:interpreter/execution current{variant:"return"} on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/return
