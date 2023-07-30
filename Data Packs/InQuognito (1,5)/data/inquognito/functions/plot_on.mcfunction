scoreboard objectives add inquognito.temp dummy
scoreboard objectives add inquognito.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add inquognito.values dummy

scoreboard objectives add inquognito.health dummy
scoreboard objectives add inquognito.energy dummy

scoreboard objectives add inquognito.clearance dummy
scoreboard objectives add inquognito.clearance.1.codes dummy

scoreboard objectives add inquognito.dialogue.intro dummy

scoreboard objectives add inquognito.doubleJump.cooldown dummy

scoreboard objectives add inquognito.gun.augments dummy
scoreboard objectives add inquognito.gun.cooldown dummy
scoreboard objectives add inquognito.gun.damage dummy
scoreboard objectives add inquognito.gun.fireRate dummy

scoreboard objectives add inquognito.jetpack.cooldown dummy
scoreboard objectives add inquognito.jetpack.duration dummy
scoreboard objectives add inquognito.jetpack.fuel dummy

scoreboard players set energy inquognito.values 20

# Pickups
summon minecraft:item_display ~-9 ~50.5 ~-2 {Tags:["inquognito","inquognito.gun"],item:{id:"minecraft:carrot_on_a_stick",Count:1b},Rotation:[180f,0f]}

summon minecraft:item_display ~24 ~55.5 ~36 {Tags:["inquognito","inquognito.suit.mk2"],item:{id:"minecraft:diamond_chestplate",Count:1b},Rotation:[-90f,0f]}
summon minecraft:item_display ~7 ~4.5 ~27 {Tags:["inquognito","inquognito.suit.mk3"],item:{id:"minecraft:amethyst_shard",Count:1b},Rotation:[-180f,0f]}

summon minecraft:item_display ~9 ~49 ~-19 {Tags:["inquognito","inquognito.code.1"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[135f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-6 ~49 ~-15 {Tags:["inquognito","inquognito.code.2"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[-160f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}
summon minecraft:item_display ~-22 ~49 ~3 {Tags:["inquognito","inquognito.code.3"],item:{id:"minecraft:copper_ingot",Count:1b},Rotation:[45f,90f],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

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
summon minecraft:text_display ~-3 ~59 ~15.49 {text:'[{"text":"1 - Main ★\\n"},{"text":"B1 - Laboratory"}]',Tags:["inquognito"],Rotation:[-180f,0f]}
summon minecraft:text_display ~-5 ~4 ~14.49 {text:'[{"text":"1 - Main\\n"},{"text":"B1 - Laboratory ★"}]',Tags:["inquognito"],Rotation:[-180f,0f]}
