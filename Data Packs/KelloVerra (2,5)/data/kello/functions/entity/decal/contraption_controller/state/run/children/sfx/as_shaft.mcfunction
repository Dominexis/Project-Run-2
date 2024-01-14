scoreboard players set #type kello.value -1
execute if entity @s[tag=kello.entity.type.large] run scoreboard players set #type kello.value 0
execute if entity @s[tag=kello.entity.type.small] run scoreboard players set #type kello.value 1

execute as @e[type=minecraft:item_display,distance=..16,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @a[tag=pr.target] if score @s kello.player.id = #local kello.player.id run function kello:entity/decal/contraption_controller/state/run/children/sfx/player
return 1