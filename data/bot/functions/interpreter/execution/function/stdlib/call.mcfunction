execute if data storage bot:interpreter/execution current{name:["p","l","a","c","e"]} on vehicle run function bot:interpreter/execution/place
execute if data storage bot:interpreter/execution current{name:["m","o","v","e"]} on vehicle run function bot:interpreter/execution/move
execute if data storage bot:interpreter/execution current{name:["g","e","t","b","l","o","c","k"]} on vehicle run function bot:interpreter/execution/getblock
execute if data storage bot:interpreter/execution current{name:["p","r","i","n","t"]} run function bot:interpreter/execution/print
execute if data storage bot:interpreter/execution current{name:["s","l","e","e","p"]} run function bot:interpreter/execution/sleep
execute if data storage bot:interpreter/execution current{name:["m","a","t","c","h"]} on vehicle run function bot:interpreter/execution/match
execute if data storage bot:interpreter/execution current{name:["r","a","n","d","o","m"]} run function bot:interpreter/execution/random

function bot:interpreter/pipeline/execute/close_std_function
