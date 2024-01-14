scoreboard players operation @s kello.entity.id = #global kello.entity.id

data merge entity @s {DeathLootTable:"",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b,Tags:["kello.entity","kello.decal","kello.exclude","kello.entity.type.moving_platform","kello.entity.part.platform","pr.ignore","kello.exclude"],Attributes:[{Name:"minecraft:generic.max_health",Base:80.0d},{Name:"minecraft:generic.armor",Base:30.0d}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:160000,show_particles:0b}]}
ride @s mount @e[type=minecraft:item_display,tag=kello.vehicle.target,limit=1]
return 1