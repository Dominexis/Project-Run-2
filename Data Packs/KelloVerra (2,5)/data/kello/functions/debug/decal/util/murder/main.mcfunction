scoreboard players set #murdered kello.value 0
execute as @e[type=#kello:generic/system,tag=kello.entity] if score @s kello.decal.id = #selected kello.decal.id run function kello:debug/decal/util/murder/zzz
execute if score #murdered kello.value matches 1.. run tellraw @p [ {"text":"[kello] ","color":"white"},{"text":"Successfully murdered ","color":"white"},{"score":{"name":"#murdered","objective":"kello.value"},"color":"blue"},{"text":" Selected entities with a Decal ID of ","color":"white"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"blue"} ]
