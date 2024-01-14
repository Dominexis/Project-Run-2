data merge entity @s {Silent:1b,NoAI:1b,Invulnerable:1b,Tags:["pr.target","kello.entity","kello.entity.type.chariot","kello.entity.lock","kello.entity.type.squishy","kello.entity.ticking"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:200000,show_particles:0b}]}
scoreboard players set @s kello.entity.owner 1
scoreboard players set @s kello.entity.link 1
scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.player.id = #local kello.player.id
tp @s @p[tag=pr.target,tag=kello.player.target]
ride @p[tag=pr.target,tag=kello.player.target] mount @s
return 1