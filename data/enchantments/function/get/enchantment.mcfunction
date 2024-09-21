scoreboard players remove ench_count enchantments 1
scoreboard players set #symbol_position enchantments 1
execute if score custom_enchantments config matches 0 run function enchantments:get/set_min_len
data modify storage enchantments list append value {id:"",lvl:0}
function enchantments:get/enchantment/set_enchantment with storage enchantments
function enchantments:get/enchantment/set_level with storage enchantments
function enchantments:get/enchantment/remove_enchantment with storage enchantments
