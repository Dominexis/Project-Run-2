# This function runs as and at all players that enter your plot
effect give @s resistance infinite 4 true
give @s bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:10}]}
item replace entity @s inventory.0 with arrow
give @s netherite_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:1.79769313486232E+308d,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-12384,18603,20369,-37206]}],Enchantments:[{}]}
#scoreboard objectives setdisplay sidebar.team.green im1294.kill_count

scoreboard players set @s im1294.zombie_kills 0
scoreboard players set @s im1294.skeleton_kills 0
scoreboard players set @s im1294.spider_kills 0