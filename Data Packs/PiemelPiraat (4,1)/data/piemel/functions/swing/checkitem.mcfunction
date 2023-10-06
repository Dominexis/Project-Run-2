# checks the players held item
# item replace entity @e[tag=piemel.itemchecksum,tag=pr.target] weapon with minecraft:carrot_on_a_stick{CustomModelData:10063}
# execute store success score checksum piemel.values run data modify entity @e[tag=piemel.itemchecksum,tag=pr.target,limit=1] HandItems[0] set from entity @s SelectedItem
# execute if data entity @s SelectedItem.id if score checksum piemel.values matches 0 run function piemel:swing/check
execute if predicate piemel:holding_swing run function piemel:swing/check