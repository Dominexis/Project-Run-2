kill @e[type=!minecraft:player,tag=inquognito]

scoreboard objectives add inquognito.id dummy

scoreboard objectives add inquognito.raycast dummy
scoreboard objectives add inquognito.raycast_success dummy
scoreboard objectives add inquognito.temp dummy
scoreboard objectives add inquognito.values dummy

scoreboard objectives add inquognito.drop_item minecraft.custom:minecraft.drop
scoreboard objectives add inquognito.jump minecraft.custom:minecraft.jump
scoreboard objectives add inquognito.use minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add inquognito.energy dummy
scoreboard objectives add inquognito.health dummy
scoreboard objectives add inquognito.suit dummy
scoreboard objectives add inquognito.upgrades dummy

scoreboard objectives add inquognito.dialogue dummy
scoreboard objectives add inquognito.dialogue.tick dummy
scoreboard objectives add inquognito.boss.health dummy
scoreboard objectives add inquognito.boss.heartbeat dummy

scoreboard objectives add inquognito.clearance dummy
scoreboard objectives add inquognito.clearance.1.codes dummy
scoreboard objectives add inquognito.clearance.bounce_pad_room dummy
scoreboard objectives add inquognito.clearance.energy dummy
scoreboard objectives add inquognito.clearance.frostbite dummy
scoreboard objectives add inquognito.clearance.office dummy
scoreboard objectives add inquognito.clearance.office.1 dummy
scoreboard objectives add inquognito.clearance.office.2 dummy
scoreboard objectives add inquognito.clearance.office.3 dummy
scoreboard objectives add inquognito.clearance.sector_4 dummy

scoreboard objectives add inquognito.floor dummy

scoreboard objectives add inquognito.frostbite dummy
scoreboard objectives add inquognito.frostbite_timer dummy

scoreboard objectives add inquognito.transmission trigger
scoreboard objectives add inquognito.transmission.current dummy
scoreboard objectives add inquognito.transmission.tick dummy

scoreboard objectives add inquognito.doubleJump.cooldown dummy

scoreboard objectives add inquognito.gun.augments dummy
scoreboard objectives add inquognito.gun.augments.nova_cooldown dummy
scoreboard objectives add inquognito.gun.cooldown dummy
scoreboard objectives add inquognito.gun.damage dummy
scoreboard objectives add inquognito.gun.fireRate dummy

scoreboard objectives add inquognito.jetpack.cooldown dummy
scoreboard objectives add inquognito.jetpack.duration dummy
scoreboard objectives add inquognito.jetpack.fuel dummy

scoreboard objectives add inquognito.keypad dummy

scoreboard players set energy inquognito.values 20
scoreboard players set max_upgrades inquognito.values 18

scoreboard players set key.1 inquognito.keypad 0
scoreboard players set key.2 inquognito.keypad 0
scoreboard players set key.3 inquognito.keypad 0
scoreboard players set key.4 inquognito.keypad 0
scoreboard players set correct inquognito.keypad 0
scoreboard players set goal inquognito.keypad 0

scoreboard players set 20 inquognito.values 20
scoreboard players set 30 inquognito.values 30
scoreboard players set 40 inquognito.values 40
scoreboard players set 200 inquognito.values 200

# Pickups
summon minecraft:item_display ~-9 ~50.5 ~-2 {Tags:["inquognito","inquognito.gun"],item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:201831},Count:1b},Rotation:[-45f,30f],transformation:[1.25f,0f,0f,0f,0f,1.25f,0f,0f,0f,0f,1.25f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~-9 ~59 ~-38 {Tags:["inquognito","inquognito.gun.frostbite"],item:{id:"minecraft:tide_armor_trim_smithing_template",Count:1b},Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-20 ~-4 ~-33 {Tags:["inquognito","inquognito.gun.nova"],item:{id:"minecraft:eye_armor_trim_smithing_template",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~-15 ~44 ~13 {Tags:["inquognito","inquognito.gun.trinity"],item:{id:"minecraft:ward_armor_trim_smithing_template",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~24 ~55.5 ~36 {Tags:["inquognito","inquognito.suit.mk2"],item:{id:"minecraft:diamond_chestplate",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~7 ~4.5 ~27 {Tags:["inquognito","inquognito.suit.mk3"],item:{id:"minecraft:amethyst_shard",Count:1b},Rotation:[-180f,0f]}

summon minecraft:item_display ~22 ~48.5 ~6 {Tags:["inquognito","inquognito.code.1"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-5 ~49 ~-16 {Tags:["inquognito","inquognito.code.2"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[-45f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-23 ~49 ~ {Tags:["inquognito","inquognito.code.3"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~0 ~29 ~-35.5 {Tags:["inquognito","inquognito.code.sewer"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~36 ~9 ~-6 {Tags:["inquognito","inquognito.nightVisionScope"],item:{id:"minecraft:spyglass",Count:1b},Rotation:[135f,-45f]}

summon minecraft:item_display ~34 ~51 ~-34 {Tags:["inquognito","inquognito.upgrade.energy"],item:{id:"minecraft:nether_star",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~-9 ~60 ~-2 {Tags:["inquognito","inquognito.upgrade.health.1"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~25 ~60 ~18 {Tags:["inquognito","inquognito.upgrade.health.2"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~22 ~18 ~6 {Tags:["inquognito","inquognito.upgrade.health.3"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~-5 ~3 ~-29 {Tags:["inquognito","inquognito.upgrade.health.4"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~35 ~22 ~-10 {Tags:["inquognito","inquognito.upgrade.health.5"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[90f,0f]}

summon minecraft:item_display ~21 ~52 ~-23 {Tags:["inquognito","inquognito.upgrade.damage.1"],item:{id:"minecraft:quartz",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~22 ~73 ~-35 {Tags:["inquognito","inquognito.upgrade.damage.2"],item:{id:"minecraft:quartz",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~20 ~55 ~-30 {Tags:["inquognito","inquognito.upgrade.damage.3"],item:{id:"minecraft:quartz",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~32 ~15 ~-27 {Tags:["inquognito","inquognito.upgrade.damage.4"],item:{id:"minecraft:quartz",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~-35 ~49 ~1.5 {Tags:["inquognito","inquognito.upgrade.damage.5"],item:{id:"minecraft:quartz",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~-4 ~64 ~-38 {Tags:["inquognito","inquognito.upgrade.fireRate.1"],item:{id:"minecraft:sugar",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~14.5 ~63 ~-24 {Tags:["inquognito","inquognito.upgrade.fireRate.2"],item:{id:"minecraft:sugar",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~-17 ~3 ~5 {Tags:["inquognito","inquognito.upgrade.fireRate.3"],item:{id:"minecraft:sugar",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~21 ~10 ~-21 {Tags:["inquognito","inquognito.upgrade.fireRate.4"],item:{id:"minecraft:sugar",Count:1b},Rotation:[0f,0f]}
summon minecraft:item_display ~7.5 ~42 ~-30 {Tags:["inquognito","inquognito.upgrade.fireRate.5"],item:{id:"minecraft:sugar",Count:1b},Rotation:[180f,0f]}

summon minecraft:item_display ~22 ~-20.75 ~13 {Tags:["inquognito","inquognito.sonic_charge"],item:{id:"minecraft:tnt",Count:1b},Rotation:[45f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-30 ~-19.75 ~-17 {Tags:["inquognito","inquognito.sonic_charge"],item:{id:"minecraft:tnt",Count:1b},Rotation:[45f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

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

summon minecraft:marker ~-31 ~-8.5 ~-10 {Tags:["inquognito","inquognito.gate","inquognito.gate.4"],Rotation:[0f,0f]}
summon minecraft:marker ~-30 ~-8.5 ~-10 {Tags:["inquognito","inquognito.gate","inquognito.gate.4"],Rotation:[0f,0f]}
summon minecraft:marker ~-29 ~-8.5 ~-10 {Tags:["inquognito","inquognito.gate","inquognito.gate.4"],Rotation:[0f,0f]}

summon minecraft:marker ~33 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}
summon minecraft:marker ~34 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}
summon minecraft:marker ~35 ~50.5 ~-30 {Tags:["inquognito","inquognito.gate","inquognito.gate.energy"],Rotation:[0f,0f]}

summon minecraft:marker ~-10 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}
summon minecraft:marker ~-9 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}
summon minecraft:marker ~-8 ~58.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.frostbite"],Rotation:[0f,0f]}

summon minecraft:marker ~-36 ~49.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.office"],Rotation:[0f,0f]}
summon minecraft:marker ~-35 ~49.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.office"],Rotation:[0f,0f]}
summon minecraft:marker ~-34 ~49.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.office"],Rotation:[0f,0f]}

summon minecraft:marker ~-5 ~3.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.1"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~4.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.1"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~5.5 ~3 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.1"],Rotation:[0f,0f]}

summon minecraft:marker ~-5 ~3.5 ~-6 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.2"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~4.5 ~-6 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.2"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~5.5 ~-6 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.2"],Rotation:[0f,0f]}

summon minecraft:marker ~-5 ~3.5 ~-17 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.3"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~4.5 ~-17 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.3"],Rotation:[0f,0f]}
summon minecraft:marker ~-5 ~5.5 ~-17 {Tags:["inquognito","inquognito.gate","inquognito.gate.final_stretch.3"],Rotation:[0f,0f]}

summon minecraft:marker ~-22 ~-3.5 ~-34 {Tags:["inquognito","inquognito.gate","inquognito.gate.nova"],Rotation:[90f,0f]}
summon minecraft:marker ~-22 ~-3.5 ~-33 {Tags:["inquognito","inquognito.gate","inquognito.gate.nova"],Rotation:[90f,0f]}
summon minecraft:marker ~-22 ~-3.5 ~-32 {Tags:["inquognito","inquognito.gate","inquognito.gate.nova"],Rotation:[90f,0f]}

# Targets
summon minecraft:marker ~21.25 ~62.5 ~-34 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.energy"]}

summon minecraft:marker ~-25 ~59.5 ~-6.25 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.frostbite.1"]}
summon minecraft:marker ~-36.75 ~58.5 ~-37 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.frostbite.2"]}
summon minecraft:marker ~19.75 ~78.5 ~-24 {Tags:["inquognito","inquognito.target","inquognito.target.large","inquognito.target.frostbite.3"]}

summon minecraft:marker ~13 ~72.5 ~-24 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.bounce_pad_room.1"]}
summon minecraft:marker ~3 ~79.5 ~-15 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.bounce_pad_room.2"]}
summon minecraft:marker ~8 ~79.5 ~-33 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.bounce_pad_room.3"]}
summon minecraft:marker ~3 ~84.5 ~-24 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.bounce_pad_room.4"]}

summon minecraft:marker ~-36 ~49.5 ~12.75 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.office.1"]}
summon minecraft:marker ~-37 ~50.5 ~12.75 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.office.2"]}
summon minecraft:marker ~-38 ~49.5 ~12.75 {Tags:["inquognito","inquognito.target","inquognito.target.small","inquognito.target.office.3"]}

# Misc
summon minecraft:item_display ~-26.5 ~58.5 ~-12 {Tags:["inquognito","inquognito.movingBarrier"],item:{id:"minecraft:red_stained_glass_pane",Count:1b},Rotation:[180f,0f],transformation:[2f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~3 ~57 ~-24 {Tags:["inquognito","inquognito.bouncePad"],item:{id:"minecraft:honey_block",Count:1b},transformation:[5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f]}
summon minecraft:text_display ~6.25 ~62.01 ~-24 {Tags:["inquognito","inquognito.bouncePadLabel"],text:'[{"text":"-=- Experiment No. Z-58 -=-\\n","color":"white","bold":true},{"text":"Exhbits strong repulsive properties","color":"gold","bold":false}]',Rotation:[-90f,-90f],background:0}

summon minecraft:item_display ~-7.5 ~-35 ~-20.9 {Tags:["inquognito","inquognito.captiveScientist"],item:{id:"minecraft:sugar",tag:{CustomModelData:201831},Count:1b},Rotation:[-90f,0f],transformation:[2f,0f,0f,0f,0f,2f,0f,0f,0f,0f,2f,0f,0f,0f,0f,1f]}

summon minecraft:warden ~19 ~4 ~27 {Tags:["inquognito","inquognito.warden"],Rotation:[-180f,0f],Invulnerable:1b,NoAI:1b,Silent:1b}

summon minecraft:item_display ~-38 ~49.5 ~5 {Tags:["inquognito","inquognito.sculkShrieker"],item:{id:"minecraft:sculk_shrieker",Count:1b},Rotation:[-45f,15f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:armor_stand ~18.3 ~52.5 ~-18.7 {Tags:["inquognito","inquognito.camera"],Rotation:[135f,0f]}
summon minecraft:armor_stand ~24.7 ~51.5 ~-20.7 {Tags:["inquognito","inquognito.camera"],Rotation:[-135f,0f]}
summon minecraft:armor_stand ~9 ~4.5 ~16.7 {Tags:["inquognito","inquognito.camera"],Rotation:[0f,0f]}
summon minecraft:armor_stand ~31 ~12.5 ~16.7 {Tags:["inquognito","inquognito.camera"],Rotation:[0f,0f]}
summon minecraft:armor_stand ~31 ~12.5 ~13.3 {Tags:["inquognito","inquognito.camera"],Rotation:[180f,0f]}
summon minecraft:armor_stand ~14.7 ~4.5 ~-2 {Tags:["inquognito","inquognito.camera"],Rotation:[-90f,0f]}
summon minecraft:armor_stand ~-30.3 ~4.5 ~-2 {Tags:["inquognito","inquognito.camera"],Rotation:[-90f,0f]}
summon minecraft:armor_stand ~-30 ~4.5 ~-10.7 {Tags:["inquognito","inquognito.camera"],Rotation:[-180f,0f]}
summon minecraft:armor_stand ~-38.3 ~5.5 ~-38.3 {Tags:["inquognito","inquognito.camera"],Rotation:[-45f,0f]}
summon minecraft:armor_stand ~-13.7 ~5.5 ~-29.3 {Tags:["inquognito","inquognito.camera"],Rotation:[45f,0f]}
summon minecraft:armor_stand ~-27.3 ~-1.5 ~-35.3 {Tags:["inquognito","inquognito.camera"],Rotation:[-45f,0f]}
summon minecraft:armor_stand ~16.7 ~24.5 ~-12.3 {Tags:["inquognito","inquognito.camera"],Rotation:[-45f,0f]}

execute as @e[type=minecraft:armor_stand,tag=inquognito.camera] run function inquognito:logic/plot/cameras/init

summon minecraft:item_display ~22 ~-3 ~-21 {Tags:["inquognito","inquognito.propeller"],item:{id:"minecraft:iron_sword",tag:{CustomModelData:201831},Count:1b},transformation:[4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~26 ~-3 ~-28 {Tags:["inquognito","inquognito.propeller"],item:{id:"minecraft:iron_sword",tag:{CustomModelData:201831},Count:1b},transformation:[4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~12 ~1 ~-18 {Tags:["inquognito","inquognito.propeller"],item:{id:"minecraft:iron_sword",tag:{CustomModelData:201831},Count:1b},transformation:[4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~20 ~6 ~-28 {Tags:["inquognito","inquognito.propeller"],item:{id:"minecraft:iron_sword",tag:{CustomModelData:201831},Count:1b},transformation:[4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~25 ~6 ~-32 {Tags:["inquognito","inquognito.propeller"],item:{id:"minecraft:iron_sword",tag:{CustomModelData:201831},Count:1b},transformation:[4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f]}

summon minecraft:text_display ~-32 ~0.1 ~-28.75 {Tags:["inquognito"],text:'[{"text":"-=- Propulsion Suit -=-\\nTesting Chamber","color":"white","bold":true}]',Rotation:[0f,-90f],background:0}

summon minecraft:text_display ~-3 ~59 ~15.49 {Tags:["inquognito"],text:'[{"text":"1 - Main ★\\n"},{"text":"B1 - Laboratory"}]',Rotation:[-180f,0f]}
summon minecraft:text_display ~-5 ~4 ~14.49 {Tags:["inquognito"],text:'[{"text":"1 - Main\\n"},{"text":"B1 - Laboratory ★"}]',Rotation:[-180f,0f]}

summon minecraft:text_display ~-7 ~58.25 ~-31.49 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:text_display ~-11 ~58.25 ~-32.51 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[180f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

# Enemies
## Red Sector
summon minecraft:marker ~15 ~43 ~-36 {Tags:["inquognito","inquognito.enemy_spawn.1"]}
summon minecraft:marker ~20 ~43 ~-32 {Tags:["inquognito","inquognito.enemy_spawn.2"]}
summon minecraft:marker ~25 ~43 ~-36 {Tags:["inquognito","inquognito.enemy_spawn.3"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.1,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/1
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.2,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/2
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.3,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/3

## Trash Room
summon minecraft:marker ~-21 ~52 ~-29 {Tags:["inquognito","inquognito.enemy_spawn.4"]}
summon minecraft:marker ~-24 ~52 ~-31 {Tags:["inquognito","inquognito.enemy_spawn.5"]}
summon minecraft:marker ~-27 ~52 ~-33 {Tags:["inquognito","inquognito.enemy_spawn.6"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.4,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/4
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.5,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/5
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.6,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/6

## Sewer - Entrance
summon minecraft:marker ~-15 ~40 ~6 {Tags:["inquognito","inquognito.enemy_spawn.11"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.11,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/11

## Sewer - Puddle
summon minecraft:marker ~0 ~27 ~-32 {Tags:["inquognito","inquognito.enemy_spawn.12"]}
summon minecraft:marker ~0 ~27 ~-26 {Tags:["inquognito","inquognito.enemy_spawn.13"]}
summon minecraft:marker ~2 ~27 ~-29 {Tags:["inquognito","inquognito.enemy_spawn.14"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.12,limit=1] summon minecraft:drowned run function inquognito:logic/enemies/12
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.13,limit=1] summon minecraft:drowned run function inquognito:logic/enemies/13
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.14,limit=1] summon minecraft:drowned run function inquognito:logic/enemies/14

## Sector 4
summon minecraft:marker ~-35 ~-9 ~6 {Tags:["inquognito","inquognito.enemy_spawn.15"]}
summon minecraft:marker ~-29 ~-9 ~6 {Tags:["inquognito","inquognito.enemy_spawn.16"]}
summon minecraft:marker ~-36 ~-9 ~-13 {Tags:["inquognito","inquognito.enemy_spawn.17"]}
summon minecraft:marker ~-27 ~-9 ~-8 {Tags:["inquognito","inquognito.enemy_spawn.18"]}
summon minecraft:marker ~-37 ~-9 ~-4 {Tags:["inquognito","inquognito.enemy_spawn.19"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.15,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/15
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.16,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/16
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.17,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/17
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.18,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/18
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.19,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/19

## Boss Room - Parkour Area
summon minecraft:marker ~18 ~-21 ~11 {Tags:["inquognito","inquognito.enemy_spawn.20"]}
summon minecraft:marker ~18 ~-21 ~17 {Tags:["inquognito","inquognito.enemy_spawn.21"]}
summon minecraft:marker ~18 ~-27 ~18 {Tags:["inquognito","inquognito.enemy_spawn.22"]}
summon minecraft:marker ~15 ~-33 ~13 {Tags:["inquognito","inquognito.enemy_spawn.23"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.20,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/20
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.21,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/21
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.22,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/22
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.23,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/23

## Sewer - Infested Scientists
summon minecraft:marker ~-16 ~30 ~-26 {Tags:["inquognito","inquognito.enemy_spawn.24"]}
summon minecraft:marker ~-15 ~30 ~-12 {Tags:["inquognito","inquognito.enemy_spawn.25"]}
summon minecraft:marker ~-8 ~30 ~-32 {Tags:["inquognito","inquognito.enemy_spawn.26"]}
summon minecraft:marker ~1 ~30 ~-14 {Tags:["inquognito","inquognito.enemy_spawn.27"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.24,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/24
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.25,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/25
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.26,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/26
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.27,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/27

## Sector 6
summon minecraft:marker ~19 ~13 ~-21 {Tags:["inquognito","inquognito.enemy_spawn.28"]}
summon minecraft:marker ~19 ~17 ~-16 {Tags:["inquognito","inquognito.enemy_spawn.29"]}
summon minecraft:marker ~23 ~9 ~-21 {Tags:["inquognito","inquognito.enemy_spawn.30"]}
summon minecraft:marker ~23 ~21 ~-18 {Tags:["inquognito","inquognito.enemy_spawn.31"]}
summon minecraft:marker ~31 ~21 ~-10 {Tags:["inquognito","inquognito.enemy_spawn.32"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.28,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/28
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.29,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/29
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.30,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/30
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.31,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/31
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.32,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/32

## Boss Room - Battle Area
summon minecraft:marker ~-32 ~-21 ~-10 {Tags:["inquognito","inquognito.enemy_spawn.33"]}
summon minecraft:marker ~-24 ~-27 ~-8 {Tags:["inquognito","inquognito.enemy_spawn.34"]}
summon minecraft:marker ~-24 ~-21 ~-17 {Tags:["inquognito","inquognito.enemy_spawn.35"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.33,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/33
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.34,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/34
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.35,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/35
summon minecraft:marker ~-24 ~-27 ~-16 {Tags:["inquognito","inquognito.enemy_spawn.36"]}
execute at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.36,limit=1] summon minecraft:zombie_villager run function inquognito:logic/enemies/36

# Keypad
summon minecraft:item_frame ~-25 ~-4 ~-35 {Tags:["inquognito","inquognito.keypad.setup"],Facing:3b,Invisible:1b}
execute as @e[type=minecraft:item_frame,tag=inquognito.keypad.setup,limit=1] at @s run function inquognito:logic/plot/keypad/init/frame

function inquognito:logic/plot/keypad/setup

function inquognito:logic/plot/keypad/answer
