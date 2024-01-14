# This function runs as and at all players that enter your plot
effect give @s minecraft:resistance infinite 4 true
give @s minecraft:bow{Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:power",lvl:10s}]}
item replace entity @s inventory.0 with minecraft:arrow
give @s minecraft:netherite_sword{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:infd,Slot:"mainhand",Name:"minecraft:generic.attack_damage",UUID:[I;-12384,18603,20369,-37206]}],Enchantments:[{}]}
#scoreboard objectives setdisplay sidebar.team.green im1294.kill_count

scoreboard players set @s im1294.zombie_kills 0
scoreboard players set @s im1294.skeleton_kills 0
scoreboard players set @s im1294.spider_kills 0
return 1