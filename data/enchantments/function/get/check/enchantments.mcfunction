# Основная рука
execute if items entity @s weapon.mainhand *[minecraft:enchantments] run return run data modify storage enchantments raw_data set from entity @s SelectedItem.components."minecraft:enchantments".levels
# Второстепенная рука
execute if items entity @s weapon.offhand *[minecraft:enchantments] run return run data modify storage enchantments raw_data set from entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels
# Не удалось получить зачарования
return fail