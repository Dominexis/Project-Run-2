scoreboard players set #type kello.value -1
execute if entity @s[tag=kello.entity.type.large] run scoreboard players set #type kello.value 0
execute if entity @s[tag=kello.entity.type.small] run scoreboard players set #type kello.value 1

execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,distance=..16,sort=nearest,limit=1] run scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @a[tag=pr.target] if score @s kello.player.id = #local kello.player.id run function kello:entity/decal/contraption_controller/state/run/children/sfx/player