#Kills Boss
execute at @e[tag=pr.target,tag=jpmagic.death] as @e[type=minecraft:magma_cube,tag=pr.target,distance=..50,nbt={Size:7}] run tp @s ~ -150 ~

#RNG HAPPEN
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate store result score @s jpmagic.tmp at @e[tag=pr.target,type=marker,tag=LootGoblin] run loot insert ~ ~ ~ loot jpmagic:jump_rng
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate run function jpmagic:jprng
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate at @e[tag=pr.target,type=marker,tag=LootGoblin] run setblock ~ ~ ~ air
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate at @e[tag=pr.target,type=marker,tag=LootGoblin] run setblock ~ ~ ~ chest
execute as @a[tag=pr.target] at @s if block ~ ~ ~ polished_blackstone_pressure_plate run tag @s add JP_RNG
execute as @a[tag=pr.target] at @s unless block ~ ~ ~ polished_blackstone_pressure_plate run tag @s remove JP_RNG
kill @e[type=item,tag=pr.target]
scoreboard players set @a[tag=pr.target] jpmagic.tmp 0

#BOSS FIGHT
#Item Give
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s hotbar.0 with golden_sword{AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:10,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-123515,30979,13382,-61958]}],Unbreakable:1,display:{Name:'[{"text":"Mid","italic":false,"color":"#fe5a1c"},{"text":"as\'","color":"#fe7c22"},{"text":" ","color":"#fe7c22"},{"text":"Exc","color":"#ff9e28"},{"text":"ali","color":"#ffbf2e"},{"text":"bur","color":"#ffe134"}]'},Enchantments:[{id:sharpness,lvl:10}],HideFlags:1} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s hotbar.2 with tripwire_hook{display:{Name:'[{"text":"Magma Key","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Some things are better left","italic":true,"color":"gray"}]','[{"text":"unknown...","italic":true,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"MYTHIC","italic":false,"color":"light_purple","bold":true}]']}} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s hotbar.1 with iron_axe{Unbreakable:1,display:{Name:'[{"text":"Steel Forged Axe","italic":false,"color":"blue"}]',Lore:['[{"text":"","italic":false}]','[{"text":"╔══","italic":true,"color":"gold"},{"text":"═════════════════════════╗","color":"yellow"},{"text":"","color":"dark_purple","italic":false}]','[{"text":"+9 Attack Damage","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-0.1 Attack Speed","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"\\"Once used in war against dragons,","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"hopefully just as useful against","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"a lava monster.\\"","italic":true,"color":"gray"},{"text":"","italic":true,"color":"dark_purple"}]','[{"text":"╚══","italic":true,"color":"gold"},{"text":"═════════════════════════╝","color":"yellow"}]']},Enchantments:[{id:sharpness,lvl:25}],HideFlags:1} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'[{"text":"Sub-zero Wisp Helmet","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true}]']},SkullOwner:{Id:[I;1267955158,-1562098379,-1081062529,238942034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM5YzBkN2ZhYjlhMDQ1OTlmMzUxYTMyY2NmMzRlYWI4YTA5ZTcxNTQxMDY1NDFmNDE0YzQ0MzlkYzlkNmNkNSJ9fX0="}]}}} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:3847167,Name:'[{"text":"Sub-zero Wisp Chestplate","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{color:1481884,Name:'[{"text":"Sub-zero Wisp Leggings","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua"}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,tag=!BossFighting] run item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:3847130,Name:'[{"text":"Sub-zero Wisp Boots","italic":false,"color":"aqua"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua"}]']},Enchantments:[{id:"minecraft:protection",lvl:10}],HideFlags:65} 1

#Key Detection
execute at @e[tag=pr.target,tag=jp_key_back] run tp @a[tag=pr.target,distance=..5,predicate=jpmagic:holding_tripwire_hook,tag=!BossFighting] ~1.5 ~ ~-3.25
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,predicate=jpmagic:holding_tripwire_hook,tag=!BossFighting] run function jpmagic:lavadoor
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..5,predicate=jpmagic:holding_tripwire_hook,tag=!BossFighting] run tag @s add BossFighting

#Start Boss Fight

execute at @e[tag=pr.target,tag=jpmagic.key_marker] if entity @p[tag=pr.target,distance=..4,predicate=jpmagic:holding_tripwire_hook] unless entity @e[tag=pr.target,tag=jpboss] run bossbar set jpmagic.volcanokeeper players @a[tag=pr.target]
execute at @e[tag=pr.target,tag=jpmagic.key_marker] if entity @p[tag=pr.target,distance=..4,predicate=jpmagic:holding_tripwire_hook] unless entity @e[tag=pr.target,tag=jpboss] run summon minecraft:magma_cube ~ ~-5 ~-20 {Size:15,CustomName:'[{"text":"Volcano\'s Keeper","color":"gold"}]',CustomNameVisible:1b,Health:100,Tags:["jpboss"],ActiveEffects:[{Id:5,Duration:100000000,Amplifier:20,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f}]}
execute at @e[tag=pr.target,tag=jpmagic.key_marker] run clear @a[tag=pr.target,distance=..4,predicate=jpmagic:holding_tripwire_hook] tripwire_hook
execute at @p[tag=pr.target] store result bossbar minecraft:jpmagic.volcanokeeper value run data get entity @e[tag=pr.target,tag=jpboss,limit=1] Health 1
execute at @p[tag=pr.target] store result bossbar minecraft:jpmagic.volcanokeeper max run attribute @e[tag=pr.target,tag=jpboss,limit=1] minecraft:generic.max_health get 1
execute unless entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible false
execute if entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible true
execute at @e[tag=pr.target,tag=jpboss] run bossbar set jpmagic.volcanokeeper players @a[tag=pr.target,distance=..20]
execute unless entity @e[tag=pr.target,tag=jpboss] run fill ~-5 ~-58 ~-3 ~-7 ~-58 ~-1 minecraft:slime_block
execute unless entity @e[tag=pr.target,tag=jpboss] run tp @e[tag=pr.target,type=magma_cube,tag=!jpboss] ~ ~-62 ~
execute unless entity @e[tag=pr.target,tag=jpboss] run kill @e[tag=pr.target,type=magma_cube,tag=!jpboss]
execute if entity @e[tag=pr.target,tag=jpboss] run fill ~-5 ~-58 ~-3 ~-7 ~-58 ~-1 minecraft:air
execute positioned ~-6 ~-57 ~-2 as @a[tag=pr.target,distance=..2] at @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 127 true
execute positioned ~-6 ~-57 ~-2 as @a[tag=pr.target,distance=..2] at @s if block ~ ~-1 ~ minecraft:slime_block run clear @s
execute as @a[tag=pr.target] at @s if block ~ ~2 ~ structure_void run function pr:player/finish