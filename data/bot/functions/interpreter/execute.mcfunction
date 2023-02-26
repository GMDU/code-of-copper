execute if data storage bot:interpreter/execution Current{variant:"move"} run function bot:interpreter/execution/move
execute if data storage bot:interpreter/execution Current{variant:"place"} run function bot:interpreter/execution/place
execute if data storage bot:interpreter/execution Current{variant:"let"} run function bot:interpreter/execution/let
execute if data storage bot:interpreter/execution Current{variant:"print"} run function bot:interpreter/execution/print
execute if data storage bot:interpreter/execution Current{variant:"if"} run function bot:interpreter/execution/if
execute if data storage bot:interpreter/execution Current{variant:"while"} run function bot:interpreter/execution/while
execute if data storage bot:interpreter/execution Current{variant:"getBlock"} run function bot:interpreter/execution/get_block
execute if data storage bot:interpreter/execution Current{variant:"sleep"} run function bot:interpreter/execution/sleep
execute if data storage bot:interpreter/execution Current{variant:"match"} run function bot:interpreter/execution/match
execute if data storage bot:interpreter/execution Current{variant:"loop"} run function bot:interpreter/execution/loop
execute if data storage bot:interpreter/execution Current{variant:"break"} run function bot:interpreter/execution/break

data modify storage bot:interpreter/execution Current set value {}

function bot:interpreter/align
