scoreboard players operation @s kello.entity.id = #global kello.entity.id

data merge entity @s {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:0b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b,Tags:["kello.entity","kello.decal","kello.exclude","kello.entity.type.moving_platform","kello.entity.part.platform","pr.ignore","kello.exclude"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:160000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.armor,Base:30}]}
ride @s mount @e[type=item_display,tag=kello.vehicle.target,limit=1]