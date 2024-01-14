# Summon entity(ies)

execute positioned ~ ~-68 ~ run function animated_java:cogwheel/summon/small
scoreboard players set #boolean kello.value 1



# Assign scores and IDs

scoreboard players add #global kello.entity.id 1
execute positioned ~ ~-68 ~ as @e[type=#kello:generic/system,distance=..0.5,tag=aj.cogwheel.root,tag=!kello.entity.type.thrown_cogwheel,tag=!kello.entity.type.small] positioned as @s run function kello:entity/thrown/small_cog/spawn/score
return 1