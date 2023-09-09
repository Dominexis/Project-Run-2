# Process item

data modify storage pr:data tag set from entity @s Item.tag
execute if data storage pr:data {tag:{load_checkpoint:1b}} run kill @s
execute if data storage pr:data {tag:{save_checkpoint:1b}} run kill @s
tag @s add pr.item_processed