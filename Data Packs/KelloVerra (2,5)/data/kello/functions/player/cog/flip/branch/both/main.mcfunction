clear @s minecraft:diamond_horse_armor{large_cog:1b}
clear @s minecraft:diamond_horse_armor{small_cog:1b}
item replace entity @s weapon.offhand with minecraft:diamond_horse_armor{large_cog:1b,CustomModelData:351902}
item replace entity @s hotbar.0 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.1 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.2 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.3 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.4 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.5 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.6 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.7 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
item replace entity @s hotbar.8 with minecraft:diamond_horse_armor{small_cog:1b,CustomModelData:351901}
function #kello:event/offhand
return 1