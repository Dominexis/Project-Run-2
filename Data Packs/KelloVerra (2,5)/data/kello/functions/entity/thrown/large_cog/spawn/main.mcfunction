# Summon entity(ies)

execute positioned ~ ~-64 ~ run function animated_java:cogwheel/summon/large
scoreboard players set #boolean kello.value 1



# Assign scores and IDs

scoreboard players add #global kello.entity.id 1
execute positioned ~ ~-64 ~ as @e[type=#kello:generic/system,distance=..0.5,tag=aj.cogwheel.root,tag=!kello.entity.type.thrown_cogwheel,tag=!kello.entity.type.large] positioned as @s run function kello:entity/thrown/large_cog/spawn/score
return 1