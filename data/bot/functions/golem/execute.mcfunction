data modify storage bot:program Current set from storage bot:program InstructionStack[-1]

execute if data storage bot:program Current{variant:"move"} run function bot:golem/execution/move
execute if data storage bot:program Current{variant:"place"} run function bot:golem/execution/place
execute if data storage bot:program Current{variant:"let"} run function bot:golem/execution/let
execute if data storage bot:program Current{variant:"print"} run function bot:golem/execution/print
execute if data storage bot:program Current{variant:"if"} run function bot:golem/execution/if
execute if data storage bot:program Current{variant:"while"} run function bot:golem/execution/while

data modify storage bot:program Current set value {}
data remove storage bot:program InstructionStack[-1]
