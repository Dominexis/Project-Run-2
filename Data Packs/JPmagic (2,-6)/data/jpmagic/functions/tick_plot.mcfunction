#Kills Boss
execute at @e[tag=pr.target,tag=jpmagic.death] as @e[type=minecraft:magma_cube,distance=..50,tag=pr.target,nbt={Size:7}] run tp @s ~ -150 ~

#RNG HAPPEN
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run function jpmagic:jprng
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run tag @s add JP_RNG
execute as @a[tag=pr.target] at @s unless block ~ ~ ~ minecraft:polished_blackstone_pressure_plate run tag @s remove JP_RNG
kill @e[type=minecraft:item,tag=pr.target]

#BOSS FIGHT
#Item Give
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s hotbar.0 with minecraft:golden_sword{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_speed",Amount:10.0d,Slot:"mainhand",Name:"minecraft:generic.attack_speed",UUID:[I;-123515,30979,13382,-61958]}],Unbreakable:1b,display:{Name:'[{"text":"Mid","italic":false,"color":"#fe5a1c","type":"text"},{"text":"as\'","color":"#fe7c22","type":"text"},{"text":" ","color":"#fe7c22","type":"text"},{"text":"Exc","color":"#ff9e28","type":"text"},{"text":"ali","color":"#ffbf2e","type":"text"},{"text":"bur","color":"#ffe134","type":"text"}]'},Enchantments:[{id:"minecraft:sharpness",lvl:10s}],HideFlags:1} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s hotbar.2 with minecraft:tripwire_hook{display:{Name:'[{"text":"Magma Key","italic":false,"color":"light_purple","type":"text"}]',Lore:['[{"text":"Some things are better left","italic":true,"color":"gray","type":"text"}]','[{"text":"unknown...","italic":true,"color":"gray","type":"text"},{"text":"","italic":false,"color":"dark_purple","type":"text"}]','[{"text":"","italic":false,"color":"dark_purple","type":"text"}]','[{"text":"MYTHIC","italic":false,"color":"light_purple","bold":true,"type":"text"}]']}} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s hotbar.1 with minecraft:iron_axe{Unbreakable:1b,display:{Name:'[{"text":"Steel Forged Axe","italic":false,"color":"blue","type":"text"}]',Lore:['[{"text":"","italic":false,"type":"text"}]','[{"text":"╔══","italic":true,"color":"gold","type":"text"},{"text":"═════════════════════════╗","color":"yellow","type":"text"},{"text":"","color":"dark_purple","italic":false,"type":"text"}]','[{"text":"+9 Attack Damage","italic":false,"color":"green","type":"text"},{"text":"","italic":false,"color":"dark_purple","type":"text"}]','[{"text":"-0.1 Attack Speed","italic":false,"color":"red","type":"text"},{"text":"","italic":false,"color":"dark_purple","type":"text"}]','[{"text":"\\"Once used in war against dragons,","italic":true,"color":"gray","type":"text"},{"text":"","italic":true,"color":"dark_purple","type":"text"}]','[{"text":"hopefully just as useful against","italic":true,"color":"gray","type":"text"},{"text":"","italic":true,"color":"dark_purple","type":"text"}]','[{"text":"a lava monster.\\"","italic":true,"color":"gray","type":"text"},{"text":"","italic":true,"color":"dark_purple","type":"text"}]','[{"text":"╚══","italic":true,"color":"gold","type":"text"},{"text":"═════════════════════════╝","color":"yellow","type":"text"}]']},Enchantments:[{id:"minecraft:sharpness",lvl:25s}],HideFlags:1} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'[{"text":"Sub-zero Wisp Helmet","italic":false,"color":"aqua","type":"text"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true,"type":"text"}]']},SkullOwner:{Id:[I;1267955158,-1562098379,-1081062529,238942034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM5YzBkN2ZhYjlhMDQ1OTlmMzUxYTMyY2NmMzRlYWI4YTA5ZTcxNTQxMDY1NDFmNDE0YzQ0MzlkYzlkNmNkNSJ9fX0="}]}}} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,display:{color:3847167,Name:'[{"text":"Sub-zero Wisp Chestplate","italic":false,"color":"aqua","type":"text"}]',Lore:['[{"text":"DIVINE","italic":false,"color":"aqua","bold":true,"type":"text"}]']},Enchantments:[{id:"minecraft:protection",lvl:10s}],HideFlags:65} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,display:{color:1481884,Name:'[{"text":"Sub-zero Wisp Leggings","italic":false,"color":"aqua","type":"text"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua","type":"text"}]']},Enchantments:[{id:"minecraft:protection",lvl:10s}],HideFlags:65} 1
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting] run item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:3847130,Name:'[{"text":"Sub-zero Wisp Boots","italic":false,"color":"aqua","type":"text"}]',Lore:['[{"text":"DIVINE","italic":false,"bold":true,"color":"aqua","type":"text"}]']},Enchantments:[{id:"minecraft:protection",lvl:10s}],HideFlags:65} 1

#Key Detection
execute at @e[tag=pr.target,tag=jp_key_back] run tp @a[distance=..5,tag=pr.target,tag=!BossFighting,predicate=jpmagic:holding_tripwire_hook] ~1.5 ~ ~-3.25
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting,predicate=jpmagic:holding_tripwire_hook] run function jpmagic:lavadoor
execute at @e[tag=pr.target,tag=jp_key_back] as @a[distance=..5,tag=pr.target,tag=!BossFighting,predicate=jpmagic:holding_tripwire_hook] run tag @s add BossFighting

#Start Boss Fight

execute at @e[tag=pr.target,tag=jpmagic.key_marker] if entity @p[distance=..4,tag=pr.target,predicate=jpmagic:holding_tripwire_hook] unless entity @e[tag=pr.target,tag=jpboss] if score #boss_cooldown jpmagic.tmp matches 0 run bossbar set jpmagic.volcanokeeper players @a[tag=pr.target]
execute at @e[tag=pr.target,tag=jpmagic.key_marker] if entity @p[distance=..4,tag=pr.target,predicate=jpmagic:holding_tripwire_hook] unless entity @e[tag=pr.target,tag=jpboss] if score #boss_cooldown jpmagic.tmp matches 0 run summon minecraft:magma_cube ~ ~-5 ~-20 {Size:15,CustomName:'[{"text":"Volcano\'s Keeper","color":"gold","type":"text"}]',CustomNameVisible:1b,Health:100,Tags:["jpboss"],Attributes:[{Name:"minecraft:generic.max_health",Base:100.0d}],active_effects:[{id:"minecraft:strength",duration:100000000,amplifier:20b,show_particles:0b}]}
execute at @e[tag=pr.target,tag=jpmagic.key_marker] run clear @a[distance=..4,tag=pr.target,predicate=jpmagic:holding_tripwire_hook] minecraft:tripwire_hook



# Boss cooldown
execute if entity @e[tag=pr.target,tag=jpboss] run scoreboard players set #boss_cooldown jpmagic.tmp 100
execute unless entity @e[tag=pr.target,tag=jpboss] if score #boss_cooldown jpmagic.tmp matches 1.. run scoreboard players remove #boss_cooldown jpmagic.tmp 1


# Item forcing
execute as @a[tag=pr.target,tag=BossFighting] run function jpmagic:force_items

execute store result bossbar minecraft:jpmagic.volcanokeeper value run data get entity @e[tag=pr.target,tag=jpboss,limit=1] Health 1
execute store result bossbar minecraft:jpmagic.volcanokeeper max run attribute @e[tag=pr.target,tag=jpboss,limit=1] minecraft:generic.max_health get
execute unless entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible false
execute if entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible true
execute at @e[tag=pr.target,tag=jpboss] run bossbar set jpmagic.volcanokeeper players @a[distance=..20,tag=pr.target]
execute unless entity @e[tag=pr.target,tag=jpboss] run fill ~-5 ~-58 ~-3 ~-7 ~-58 ~-1 minecraft:slime_block
execute unless entity @e[tag=pr.target,tag=jpboss] as @e[type=minecraft:magma_cube,tag=pr.target,tag=!jpboss] run data merge entity @s {Size:0}
execute unless entity @e[tag=pr.target,tag=jpboss] run tp @e[type=minecraft:magma_cube,tag=pr.target,tag=!jpboss] ~ ~-1000 ~
execute unless entity @e[tag=pr.target,tag=jpboss] run kill @e[type=minecraft:magma_cube,tag=pr.target,tag=!jpboss]
execute if entity @e[tag=pr.target,tag=jpboss] run fill ~-5 ~-58 ~-3 ~-7 ~-58 ~-1 minecraft:air
execute positioned ~-6 ~-57 ~-2 as @a[distance=..2,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 127 true
execute positioned ~-6 ~-57 ~-2 as @a[distance=..2,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:slime_block run clear @s
execute as @a[tag=pr.target] at @s if block ~ ~2 ~ minecraft:structure_void run function pr:player/finish
return 1