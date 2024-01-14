clear @s[tag=cobra2.down] minecraft:iron_boots
clear @s[tag=cobra2.up] minecraft:netherite_boots
item replace entity @s[tag=cobra2.up,scores={cobra2.ground=1}] container.4 with minecraft:iron_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"white","bold":true,"type":"text"}]'}}
item replace entity @s[tag=cobra2.down,scores={cobra2.ground=1}] container.4 with minecraft:netherite_boots{display:{Name:'[{"text":"Right click to Flip","italic":false,"color":"dark_gray","bold":true,"type":"text"}]'}}

return 1