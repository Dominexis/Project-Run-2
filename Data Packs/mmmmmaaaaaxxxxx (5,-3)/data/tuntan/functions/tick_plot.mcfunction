# This function will run every tick while players are in your plot on the center block at Y=0
execute as @a[scores={tuntan_clicked=1..},tag=tuntan.enoughpoints,tag=pr.target] run function pr:player/finish
execute as @a[scores={tuntan_clicked=1..},tag=tuntan.enoughpoints,tag=pr.target] run function tuntan:exit

execute as @a[tag=pr.target] run function tuntan:display_timer
effect clear @e[tag=pr.target] levitation
execute positioned ~-19 ~121 ~-19 run effect give @e[dx=38,dz=38,dy=17,tag=pr.target] levitation infinite 69 true
execute as @a[tag=pr.target,predicate=tuntan:onred] run function tuntan:tostart
item replace entity @a[tag=pr.target,tag=tuntan.started] weapon.offhand with firework_rocket{Fireworks:{Flight:1b}}
kill @e[type=item,tag=pr.target]


particle minecraft:reverse_portal ~ ~151 ~ 0 0 0 .1 10
particle minecraft:portal ~-15 ~67 ~ 0 0 0 1 5
particle minecraft:portal ~21 ~-60 ~35 0 0 0 1 5
particle minecraft:portal ~2 ~-19 ~-7 0 0 0 1 5
particle minecraft:portal ~1 ~-26 ~-37 0 0 0 1 5
particle minecraft:portal ~35 ~223 ~-23 0 0 0 1 5
particle minecraft:portal ~9 ~282 ~-22 0 0 0 1 5
particle minecraft:portal ~-36 ~252 ~35 0 0 0 1 5
execute at @e[tag=tuntan.finish,tag=pr.target,tag=!tuntan.teleport] run particle minecraft:block gold_block ~ ~ ~ 0.3 0.3 0.3 0 10

tag @a[tag=pr.target,tag=!tuntan.temp1] remove tuntan.temp2
tag @a[tag=pr.target] remove tuntan.temp1
execute at @e[tag=tuntan.finish0,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/0
execute at @e[tag=tuntan.finish1,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/1
execute at @e[tag=tuntan.finish2,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/2
execute at @e[tag=tuntan.finish3,tag=pr.target] as @a[distance=..2.5,tag=pr.target] run function tuntan:finish/3
execute at @e[tag=tuntan.finish4,tag=pr.target] as @a[distance=..2.5,tag=pr.target] run function tuntan:finish/4
execute at @e[tag=tuntan.finish5,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/5
execute at @e[tag=tuntan.finish6,tag=pr.target] as @a[distance=..2.5,tag=pr.target] run function tuntan:finish/6
execute at @e[tag=tuntan.finish7,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/7
execute at @e[tag=tuntan.finish8,tag=pr.target] as @a[distance=..2.5,tag=pr.target] run function tuntan:finish/8
execute at @e[tag=tuntan.finish9,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/9
execute at @e[tag=tuntan.finish10,tag=pr.target] as @a[distance=..3.5,tag=pr.target] run function tuntan:finish/10

execute as @a[tag=!tuntan.enoughpoints,tag=pr.target] if score @s tuntan_points matches 21.. run tag @s add tuntan.enoughpoints
item replace entity @e[tag=tuntan.enoughpoints,tag=pr.target] hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"CLICK THIS TO FINISH MAP","italic":false}',Lore:['{"text":"Feel free to play the rest of the tunnels.","color":"white","italic":false}','{"text":"You can earn up to 50 points by completing all 10!","color":"white","italic":false}']}} 