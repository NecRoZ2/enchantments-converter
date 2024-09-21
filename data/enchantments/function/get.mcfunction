# Если у игрока нету зачарованного предмета в основной или второстепенной руке, то прерываем функциюsay 1
execute unless function enchantments:get/check/enchantments run return fail
execute store result score ench_count enchantments run data get storage enchantments raw_data

# Переводим необработанные зачарования в тип "string"
function enchantments:get/modify_raw_data with storage enchantments

# Инициализация
data modify storage enchantments list set value []
scoreboard players set count_colons enchantments 0
scoreboard players set #symbol_position enchantments 1
execute if score custom_enchantments config matches 0 run function enchantments:get/set_min_len

# Цикл по обработке
function enchantments:get/loop

# Конец
scoreboard players reset * enchantments
data remove storage enchantments temp
data remove storage enchantments min
data remove storage enchantments max
data remove storage enchantments raw_data
data remove storage enchantments str_data