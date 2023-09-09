kill @e[type=!minecraft:player,tag=inquognito]

scoreboard objectives add inquognito.temp dummy
scoreboard objectives add inquognito.values dummy

scoreboard objectives add inquognito.jump minecraft.custom:minecraft.jump
scoreboard objectives add inquognito.use minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add inquognito.energy dummy
scoreboard objectives add inquognito.health dummy
scoreboard objectives add inquognito.suit dummy
scoreboard objectives add inquognito.upgrades dummy

scoreboard objectives add inquognito.clearance dummy
scoreboard objectives add inquognito.clearance.1.codes dummy
scoreboard objectives add inquognito.clearance.energy dummy
scoreboard objectives add inquognito.clearance.frostbite dummy
scoreboard objectives add inquognito.floor dummy

scoreboard objectives add inquognito.frostbite dummy
scoreboard objectives add inquognito.frostbite_timer dummy

scoreboard objectives add inquognito.transmission trigger
scoreboard objectives add inquognito.transmission.current dummy
scoreboard objectives add inquognito.transmission.tick dummy

scoreboard objectives add inquognito.doubleJump.cooldown dummy

scoreboard objectives add inquognito.gun.augments dummy
scoreboard objectives add inquognito.gun.cooldown dummy
scoreboard objectives add inquognito.gun.damage dummy
scoreboard objectives add inquognito.gun.fireRate dummy

scoreboard objectives add inquognito.jetpack.cooldown dummy
scoreboard objectives add inquognito.jetpack.duration dummy
scoreboard objectives add inquognito.jetpack.fuel dummy

scoreboard players set energy inquognito.values 20
scoreboard players set max_upgrades inquognito.values 18

scoreboard players set 200 inquognito.values 200

# Pickups
summon minecraft:item_display ~-9 ~50.5 ~-2 {Tags:["inquognito","inquognito.gun"],item:{id:"minecraft:carrot_on_a_stick",Count:1b},Rotation:[180f,0f]}

summon minecraft:item_display ~-9 ~59 ~-38 {Tags:["inquognito","inquognito.gun.frostbite"],item:{id:"minecraft:tide_armor_trim_smithing_template",Count:1b},Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
#summon minecraft:item_display ~-15 ~44 ~13 {Tags:["inquognito","inquognito.gun.nova"],item:{id:"minecraft:eye_armor_trim_smithing_template",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~-15 ~44 ~13 {Tags:["inquognito","inquognito.gun.trinity"],item:{id:"minecraft:ward_armor_trim_smithing_template",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~24 ~55.5 ~36 {Tags:["inquognito","inquognito.suit.mk2"],item:{id:"minecraft:diamond_chestplate",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~7 ~4.5 ~27 {Tags:["inquognito","inquognito.suit.mk3"],item:{id:"minecraft:amethyst_shard",Count:1b},Rotation:[-180f,0f]}

summon minecraft:item_display ~22 ~48.5 ~6 {Tags:["inquognito","inquognito.code.1"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-5 ~49 ~-16 {Tags:["inquognito","inquognito.code.2"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[-45f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-23 ~49 ~ {Tags:["inquognito","inquognito.code.3"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~36 ~9 ~-6 {Tags:["inquognito","inquognito.nightVisionScope"],item:{id:"minecraft:spyglass",Count:1b},Rotation:[180f,0f]}

summon minecraft:item_display ~34 ~51 ~-34 {Tags:["inquognito","inquognito.upgrade.energy"],item:{id:"minecraft:nether_star",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~-9 ~60 ~-2 {Tags:["inquognito","inquognito.upgrade.health.1"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~25 ~60 ~18 {Tags:["inquognito","inquognito.upgrade.health.2"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~22 ~18 ~6 {Tags:["inquognito","inquognito.upgrade.health.3"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~-5 ~3 ~-29 {Tags:["inquognito","inquognito.upgrade.health.4"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~21 ~52 ~-23 {Tags:["inquognito","inquognito.upgrade.damage.1"],item:{id:"minecraft:quartz",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~22 ~73 ~-35 {Tags:["inquognito","inquognito.upgrade.damage.2"],item:{id:"minecraft:quartz",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~20 ~55 ~-30 {Tags:["inquognito","inquognito.upgrade.damage.3"],item:{id:"minecraft:quartz",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~32 ~15 ~-27 {Tags:["inquognito","inquognito.upgrade.damage.4"],item:{id:"minecraft:quartz",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~-4 ~64 ~-38 {Tags:["inquognito","inquognito.upgrade.fireRate.1"],item:{id:"minecraft:sugar",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~14 ~63 ~-24 {Tags:["inquognito","inquognito.upgrade.fireRate.2"],item:{id:"minecraft:sugar",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~-17 ~3 ~5 {Tags:["inquognito","inquognito.upgrade.fireRate.3"],item:{id:"minecraft:sugar",Count:1b},Rotation:[-90f,0f]}

# Gates
summon minecraft:marker ~0 ~49.5 ~-38 {Tags:["inquognito","inquognito.gate","inquognito.gate.start"],Rotation:[0f,0f]}
summon minecraft:marker ~0 ~50.5 ~-38 {Tags:["inquognito","inquognito.gate","inquognito.gate.start"],Rotation:[0f,0f]}
summon minecraft:marker ~0 ~51.5 ~-38 {Tags:["inquognito","inquognito.gate","inquognito.gate.start"],Rotation:[0f,0f]}
summon minecraft:marker ~0 ~52.5 ~-38 {Tags:["inquognito","inquognito.gate","inquognito.gate.start"],Rotation:[0f,0f]}
summon minecraft:marker ~0 ~53.5 ~-38 {Tags:["inquognito","inquognito.gate","inquognito.gate.start"],Rotation:[0f,0f]}

summon minecraft:marker ~-11 ~51 ~-4 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[135f,0f]}
summon minecraft:marker ~-10 ~51 ~-4 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-180f,0f]}
summon minecraft:marker ~-9 ~51 ~-4 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-180f,0f]}
summon minecraft:marker ~-8 ~51 ~-4 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-180f,0f]}

summon minecraft:marker ~-7 ~51 ~-4 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-135f,0f]}
summon minecraft:marker ~-7 ~51 ~-3 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-90f,0f]}
summon minecraft:marker ~-7 ~51 ~-2 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-90f,0f]}
summon minecraft:marker ~-7 ~51 ~-1 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-90f,0f]}

summon minecraft:marker ~-7 ~51 ~0 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[-45f,0f]}
summon minecraft:marker ~-8 ~51 ~0 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[0f,0f]}
summon minecraft:marker ~-9 ~51 ~0 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[0f,0f]}
summon minecraft:marker ~-10 ~51 ~0 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[0f,0f]}

summon minecraft:marker ~-11 ~51 ~0 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[45f,0f]}
summon minecraft:marker ~-11 ~51 ~-1 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[90f,0f]}
summon minecraft:marker ~-11 ~51 ~-2 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[90f,0f]}
summon minecraft:marker ~-11 ~51 ~-3 {Tags:["inquognito","inquognito.gate","inquognito.gate.gun"],Rotation:[90f,0f]}

summon minecraft:marker ~13 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.1"],Rotation:[0f,0f]}
summon minecraft:marker ~14 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.1"],Rotation:[0f,0f]}
summon minecraft:marker ~15 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.1"],Rotation:[0f,0f]}

summon minecraft:marker ~19 ~44.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.2"],Rotation:[180f,0f]}
summon minecraft:marker ~20 ~44.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.2"],Rotation:[180f,0f]}
summon minecraft:marker ~21 ~44.5 ~-28 {Tags:["inquognito","inquognito.gate","inquognito.gate.2"],Rotation:[180f,0f]}

summon minecraft:marker ~11 ~63.5 ~-25 {Tags:["inquognito","inquognito.gate","inquognito.gate.3"],Rotation:[90f,0f]}
summon minecraft:marker ~11 ~63.5 ~-24 {Tags:["inquognito","inquognito.gate","inquognito.gate.3"],Rotation:[90f,0f]}
summon minecraft:marker ~11 ~63.5 ~-23 {Tags:["inquognito","inquognito.gate","inquognito.gate.3"],Rotation:[90f,0f]}

summon minecraft:marker ~33 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}
summon minecraft:marker ~34 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}
summon minecraft:marker ~35 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}

summon minecraft:marker ~-10 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}
summon minecraft:marker ~-9 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}
summon minecraft:marker ~-8 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}

# Targets
summon minecraft:marker ~33 ~61.5 ~-36.75 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.energy"]}

summon minecraft:marker ~-25 ~59.5 ~-6.25 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.frostbite.1"]}
summon minecraft:marker ~-36.75 ~58.5 ~-37 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.frostbite.2"]}
summon minecraft:marker ~19.75 ~78.5 ~-24 {Tags:["inquognito","inquognito.target","inquognito.target.large","inquognito.target.frostbite.3"]}

# Misc
summon minecraft:item_display ~-26.5 ~58.5 ~-12 {Tags:["inquognito","inquognito.movingBarrier"],item:{id:"minecraft:red_stained_glass_pane",Count:1b},Rotation:[180f,0f],transformation:[2f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~3 ~57 ~-24 {Tags:["inquognito","inquognito.bouncePad"],item:{id:"minecraft:honey_block",Count:1b},transformation:[5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f]}
summon minecraft:text_display ~6.25 ~62.01 ~-24 {Tags:["inquognito","inquognito.bouncePadLabel"],text:'[{"text":"-=- Experiment No. Z-58 -=-\\n","color":"white","bold":true},{"text":"Exhbits strong repulsive properties","color":"gold","bold":false}]',Rotation:[-90f,-90f],background:0}

summon minecraft:item_display ~-38 ~49.5 ~5 {Tags:["inquognito","inquognito.sculkShrieker"],item:{id:"minecraft:sculk_shrieker",Count:1b},Rotation:[-45f,15f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:text_display ~-3 ~59 ~15.49 {Tags:["inquognito"],text:'[{"text":"1 - Main ★\\n"},{"text":"B1 - Laboratory"}]',Rotation:[-180f,0f]}
summon minecraft:text_display ~-5 ~4 ~14.49 {Tags:["inquognito"],text:'[{"text":"1 - Main\\n"},{"text":"B1 - Laboratory ★"}]',Rotation:[-180f,0f]}

summon minecraft:text_display ~-7 ~58.25 ~-31.49 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:text_display ~-11 ~58.25 ~-32.51 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[180f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

# Enemies
execute positioned ~15 ~43 ~-36 summon minecraft:zombie_villager run function inquognito:logic/enemies/1
execute positioned ~20 ~43 ~-32 summon minecraft:zombie_villager run function inquognito:logic/enemies/2
execute positioned ~25 ~43 ~-36 summon minecraft:zombie_villager run function inquognito:logic/enemies/3

execute positioned ~-21 ~52 ~-29 summon minecraft:zombie_villager run function inquognito:logic/enemies/4
execute positioned ~-24 ~52 ~-31 summon minecraft:zombie_villager run function inquognito:logic/enemies/5
execute positioned ~-27 ~52 ~-33 summon minecraft:zombie_villager run function inquognito:logic/enemies/6
