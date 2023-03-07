data modify storage bot:interpreter/pipeline args set from storage bot:interpreter/pipeline current.decoded_args

data modify storage bot:interpreter/pipeline args append from entity @s data.return_value
