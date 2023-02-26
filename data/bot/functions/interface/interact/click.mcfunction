execute if predicate bot:interface/empty_hand run function bot:interface/interact/click/empty_hand
execute if predicate bot:interface/holding_book run function bot:interface/interact/click/holding_book
execute if predicate bot:interface/holding_axe run function bot:interface/interact/click/holding_axe
execute if predicate bot:interface/holding_wax unless data storage bot:temp state{waxed:true} run function bot:interface/interact/click/holding_wax