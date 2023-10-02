clear @s[tag=cobra2.down] minecraft:iron_boots
clear @s[tag=cobra2.up] minecraft:netherite_boots
item replace entity @s[scores={cobra2.ground=1},tag=cobra2.up] container.4 with minecraft:iron_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"white","bold":true}]'}}
item replace entity @s[scores={cobra2.ground=1},tag=cobra2.down] container.4 with minecraft:netherite_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"dark_gray","bold":true}]'}}
