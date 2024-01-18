# Plugins
**Warning** this is intended for datapack developers wanting to extend GolemScript. Be warned!  
**Warning** the plugin API is currently in alpha, and may change across even minor releases of the pack.

If you are implementing something you think would be genuinely useful to the language, consider opening a pull request.

## Implementing Custom Functions
### Registry

To implement functions, you will need a registry. Create a registry function like such:

```mcfunction
# mynamespace:functions/registry.mcfunction

data modify storage bot:api/interpreter/function register.target set value []

function bot:api/interpreter/function/register
```

Within that array, you will register your new functions. For example, we will be adding the `firework` function.

```mcfunction
# mynamespace:functions/registry.mcfunction

data modify storage bot:api/interpreter/function register.target set value [{name: ["f","i","r","e","w","o","r","k"], id: "firework", function: "mynamespace:functions/firework/init", args: [{type:"integer"}]}]

function bot:api/interpreter/function/register
```

Key `name` is the name that will be used in GolemScript, eg `firework()`. Key `id` is used for general lookup of your function. Key `function` is the resource path of the function your function will call when it is run.  Key `args` is used for typechecking (yet to be implemented).

You will need to add your registry function to the function tag: `bot:api/interpreter/function/registry`

```json
{
  "values": [
    "mynamespace:functions/registry"
  ]
}
```

Now lets implement the function.

```mcfunction
# mynamespace:functions/firework/init.mcfunction

scoreboard objectives add fireworks dummy

# Get the specified amount from the args.
execute store result score $amount fireworks run data get storage bot:api/interpreter/function execute.args[0].value

# Run the iterate function, if amount is greater than 0
execute if score $amount fireworks matches 1.. run function mynamespace:functions/firework/iterate.mcfunction

# Return undefined
data modify storage bot:api/interpreter/function execute.return set value {type:"undefined",value: false}
```

```mcfunction
# mynamespace:functions/firework/iterate.mcfunction

# Remove 1 from the amount
scoreboard players remove $amount fireworks 1

# Summon the firework positioned at the Golem
execute at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,16769047,11403039,1376185,7476479],FadeColors:[I;16740124,12910395,5504832,2400511,14631167]}]}}}}

# Run this function again, if amount is greater than 0
execute if score $amount fireworks matches 1.. run function mynamespace:functions/firework/iterate
```