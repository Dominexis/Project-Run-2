# Reference

scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @a[tag=pr.target] if score @s kello.player.id = #local kello.player.id run tag @s add kello.entity.player.target
return 1