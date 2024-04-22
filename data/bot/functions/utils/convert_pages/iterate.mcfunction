data modify storage bot:utils convert_pages.output append from storage bot:utils convert_pages.target[0].raw
data remove storage bot:utils convert_pages.target[0]

execute if data storage bot:utils convert_pages.target[] run function bot:utils/convert_pages/iterate