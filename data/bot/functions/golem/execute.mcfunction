execute if data storage bot:program Current{variant:"move"} run function bot:golem/execution/move
execute if data storage bot:program Current{variant:"place"} run function bot:golem/execution/place
execute if data storage bot:program Current{variant:"let"} run function bot:golem/execution/let
execute if data storage bot:program Current{variant:"print"} run function bot:golem/execution/print
execute if data storage bot:program Current{variant:"if"} run function bot:golem/execution/if
execute if data storage bot:program Current{variant:"while"} run function bot:golem/execution/while
execute if data storage bot:program Current{variant:"getBlock"} run function bot:golem/execution/get_block
execute if data storage bot:program Current{variant:"sleep"} run function bot:golem/execution/sleep
execute if data storage bot:program Current{variant:"match"} run function bot:golem/execution/match
execute if data storage bot:program Current{variant:"loop"} run function bot:golem/execution/loop

data modify storage bot:program Current set value {}

function bot:golem/align
