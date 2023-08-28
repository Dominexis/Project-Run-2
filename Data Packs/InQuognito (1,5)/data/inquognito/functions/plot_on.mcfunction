scoreboard objectives add inquognito.temp dummy
scoreboard objectives add inquognito.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add inquognito.values dummy

scoreboard objectives add inquognito.health dummy
scoreboard objectives add inquognito.energy dummy
scoreboard objectives add inquognito.suit dummy

scoreboard objectives add inquognito.clearance dummy
scoreboard objectives add inquognito.clearance.1.codes dummy

scoreboard objectives add inquognito.doubleJump.cooldown dummy

scoreboard objectives add inquognito.gun.augments dummy
scoreboard objectives add inquognito.gun.cooldown dummy
scoreboard objectives add inquognito.gun.damage dummy
scoreboard objectives add inquognito.gun.fireRate dummy

scoreboard objectives add inquognito.jetpack.cooldown dummy
scoreboard objectives add inquognito.jetpack.duration dummy
scoreboard objectives add inquognito.jetpack.fuel dummy

scoreboard objectives add inquognito.dialogue.intro dummy

scoreboard players set energy inquognito.values 20

scoreboard players set 200 inquognito.values 200

# Pickups
summon minecraft:item_display ~-9 ~50.5 ~-2 {Tags:["inquognito","inquognito.gun"],item:{id:"minecraft:carrot_on_a_stick",Count:1b},Rotation:[180f,0f]}

summon minecraft:item_display ~-9 ~58 ~-38 {Tags:["inquognito","inquognito.gun.frostbite"],item:{id:"minecraft:blue_ice",Count:1b},Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~24 ~55.5 ~36 {Tags:["inquognito","inquognito.suit.mk2"],item:{id:"minecraft:diamond_chestplate",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~7 ~4.5 ~27 {Tags:["inquognito","inquognito.suit.mk3"],item:{id:"minecraft:amethyst_shard",Count:1b},Rotation:[-180f,0f]}

summon minecraft:item_display ~9 ~49 ~-19 {Tags:["inquognito","inquognito.code.1"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-6 ~49 ~-15 {Tags:["inquognito","inquognito.code.2"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[-160f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-22 ~49 ~3 {Tags:["inquognito","inquognito.code.3"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[45f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

summon minecraft:item_display ~34 ~51.5 ~-34 {Tags:["inquognito","inquognito.upgrade.energy"],item:{id:"minecraft:nether_star",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~-9 ~59.0 ~-2 {Tags:["inquognito","inquognito.upgrade.health.1"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[180f,0f]}
summon minecraft:item_display ~25 ~60.0 ~18 {Tags:["inquognito","inquognito.upgrade.health.2"],item:{id:"minecraft:slime_ball",Count:1b},Rotation:[0f,0f]}

summon minecraft:item_display ~21 ~52.0 ~-23 {Tags:["inquognito","inquognito.upgrade.damage.1"],item:{id:"minecraft:quartz",Count:1b},Rotation:[90f,0f]}
summon minecraft:item_display ~-15 ~44.0 ~13 {Tags:["inquognito","inquognito.upgrade.damage.2"],item:{id:"minecraft:quartz",Count:1b},Rotation:[0f,0f]}

# Gates
summon minecraft:marker ~-11 ~51.0 ~-4 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[135f,0f]}
summon minecraft:marker ~-10 ~51.0 ~-4 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-180f,0f]}
summon minecraft:marker ~-9 ~51.0 ~-4 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-180f,0f]}
summon minecraft:marker ~-8 ~51.0 ~-4 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-180f,0f]}

summon minecraft:marker ~-7 ~51.0 ~-4 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-135f,0f]}
summon minecraft:marker ~-7 ~51.0 ~-3 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-90f,0f]}
summon minecraft:marker ~-7 ~51.0 ~-2 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-90f,0f]}
summon minecraft:marker ~-7 ~51.0 ~-1 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-90f,0f]}

summon minecraft:marker ~-7 ~51.0 ~0 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[-45f,0f]}
summon minecraft:marker ~-8 ~51.0 ~0 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[0f,0f]}
summon minecraft:marker ~-9 ~51.0 ~0 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[0f,0f]}
summon minecraft:marker ~-10 ~51.0 ~0 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[0f,0f]}

summon minecraft:marker ~-11 ~51.0 ~0 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[45f,0f]}
summon minecraft:marker ~-11 ~51.0 ~-1 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[90f,0f]}
summon minecraft:marker ~-11 ~51.0 ~-2 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[90f,0f]}
summon minecraft:marker ~-11 ~51.0 ~-3 {Tags:["inquognito","inquognito.gate.gun"],Rotation:[90f,0f]}

summon minecraft:marker ~13 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate.1"],Rotation:[0f,0f]}
summon minecraft:marker ~14 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate.1"],Rotation:[0f,0f]}
summon minecraft:marker ~15 ~50.5 ~-28 {Tags:["inquognito","inquognito.gate.1"],Rotation:[0f,0f]}

# Misc
summon minecraft:item_display ~-26 ~58.5 ~-12 {Tags:["inquognito","inquognito.movingBarrier"],item:{id:"minecraft:red_stained_glass_pane",Count:1b},Rotation:[180f,0f],transformation:[2f,0f,0f,0f,0f,4f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

summon minecraft:text_display ~-3 ~59 ~15.49 {Tags:["inquognito"],text:'[{"text":"1 - Main ★\\n"},{"text":"B1 - Laboratory"}]',Rotation:[-180f,0f]}
summon minecraft:text_display ~-5 ~4 ~14.49 {Tags:["inquognito"],text:'[{"text":"1 - Main\\n"},{"text":"B1 - Laboratory ★"}]',Rotation:[-180f,0f]}

summon minecraft:text_display ~-7 ~57.75 ~-31.49 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[0f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:text_display ~-11 ~57.75 ~-32.51 {Tags:["inquognito"],text:'[{"text":"SUB-ZERO\\n"},{"text":"CONTAINMENT\\n\\n"},{"text":"Temp: ","color":"white"},{"text":"-40°C","color":"aqua","bold":true}]',Rotation:[180f,0f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
