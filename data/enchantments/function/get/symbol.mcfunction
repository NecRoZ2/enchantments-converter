execute store result storage enchantments min int 1 run scoreboard players operation #max enchantments = #symbol_position enchantments
execute store result storage enchantments max int 1 run scoreboard players add #max enchantments 1

scoreboard players add #symbol_position enchantments 1
function enchantments:get/symbol/macro with storage enchantments