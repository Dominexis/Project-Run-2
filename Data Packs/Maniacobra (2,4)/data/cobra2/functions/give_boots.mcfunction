clear @a[tag=pr.target] minecraft:iron_boots
clear @a[tag=pr.target] minecraft:netherite_boots
item replace entity @a[tag=cobra2.up,tag=cobra2.has_boots,nbt={OnGround:1b}] container.4 with minecraft:iron_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"white","bold":true}]'}}
item replace entity @a[tag=cobra2.down,tag=cobra2.has_boots,nbt={OnGround:1b}] container.4 with minecraft:netherite_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"dark_gray","bold":true}]'}}
