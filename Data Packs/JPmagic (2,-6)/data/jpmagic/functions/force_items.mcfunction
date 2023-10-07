execute store result score #item_count jpmagic.tmp run clear @s golden_sword 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s hotbar.0 with golden_sword{AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-123515,30979,13382,-61958]}],Unbreakable:1,display:{Name:'[{"text":"Mid","italic":false,"color":"#fe5a1c"},{"text":"as\'","color":"#fe7c22"},{"text":" ","color":"#fe7c22"},{"text":"Exc","color":"#ff9e28"},{"text":"ali","color":"#ffbf2e"},{"text":"bur","color":"#ffe134"}]'},Enchantments:[{id:sharpness,lvl:10}],HideFlags:1} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s golden_sword

execute store result score #item_count jpmagic.tmp run clear @s iron_axe 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s hotbar.1 with iron_axe{Unbreakable:1,display:{Name:'[{"text":"Steel Forged Axe","italic":false,"color":"blue"}]',Lore:['[{"text":"","italic":false}]','[{"text":"╔══","italic":true,"color":"gold"},{"text":"═════════════════════════╗","color":"yellow"},{"text":"","color":"dark_purple","italic":false}]','[{"text":"+9 Attack Damage","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-0.1 Attack Speed","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"\\"Once used in war against dragons,","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"hopefully just as useful against","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"a lava monster.\\"","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"╚══","italic":true,"color":"gold"},{"text":"═════════════════════════╝","color":"yellow"}]']},Enchantments:[{id:sharpness,lvl:25}],HideFlags:1} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s iron_axe

execute store result score #item_count jpmagic.tmp run clear @s player_head 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'[{"text":"Sub-zero Wisp Helmet","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true}]']},SkullOwner:{Id:[I;1267955158,-1562098379,-1081062529,238942034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM5YzBkN2ZhYjlhMDQ1OTlmMzUxYTMyY2NmMzRlYWI4YTA5ZTcxNTQxMDY1NDFmNDE0YzQ0MzlkYzlkNmNkNSJ9fX0="}]}}} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s player_head

execute store result score #item_count jpmagic.tmp run clear @s leather_chestplate 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:3847167,Name:'[{"text":"Sub-zero Wisp Chestplate","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s leather_chestplate

execute store result score #item_count jpmagic.tmp run clear @s leather_leggings 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{color:1481884,Name:'[{"text":"Sub-zero Wisp Leggings","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua"}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s leather_leggings

execute store result score #item_count jpmagic.tmp run clear @s leather_boots 0
execute if score #item_count jpmagic.tmp matches 0 run item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:3847130,Name:'[{"text":"Sub-zero Wisp Boots","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua"}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1
execute if score #item_count jpmagic.tmp matches 2.. run clear @s leather_boots