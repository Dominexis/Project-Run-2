scoreboard players set @s kello.decal.timer -1
scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=minecraft:marker,distance=..256,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.time_mark,tag=kello.entity.part.mark] if score @s kello.decal.id = #local kello.decal.id positioned as @s run kill @e[type=minecraft:text_display,distance=..1,tag=kello.entity.type.time_mark,sort=nearest,limit=1]
return 1