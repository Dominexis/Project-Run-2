### Replaces a player's crossbow by clearing it and giving a fresh, pre-loaded one, with sound effect
# Called by lvl2/tick
playsound item.crossbow.loading_start master @s
playsound item.crossbow.loading_middle master @s
playsound item.crossbow.loading_end master @s
clear @s crossbow
give @s crossbow{display:{Lore:['{"text":"Flame","color":"gray","italic":false}']},HideFlags:37,Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}