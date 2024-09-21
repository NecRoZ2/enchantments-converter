function enchantments:get/symbol
execute if data storage enchantments {temp:'"'} run function enchantments:get/enchantment
execute if score ench_count enchantments matches 1.. run function enchantments:get/loop