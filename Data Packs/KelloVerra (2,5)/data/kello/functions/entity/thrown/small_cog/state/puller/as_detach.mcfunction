#tag @s add kello.empty
#tag @s remove kello.attach
scoreboard players remove @s kello.entity.quantity 1

tag @a[tag=pr.target,tag=kello.entity.player.target,tag=kello.entity.small_cogwheel_pulling] remove kello.entity.small_cogwheel_pulling

scoreboard players operation #local kello.decal.id = @s kello.decal.id
return 1