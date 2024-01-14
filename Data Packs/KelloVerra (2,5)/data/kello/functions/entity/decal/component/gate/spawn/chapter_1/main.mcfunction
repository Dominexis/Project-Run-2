# Spawn entity

scoreboard players operation #animation aj.i = $aj.gate.animation.chp_1_open aj.id
execute if score #variant kello.value matches 0 rotated ~ 0 run function animated_java:gate/summon/chapter_1
execute if score #variant kello.value matches 1 rotated ~ 0 run function animated_java:gate/summon/loading
execute if score #variant kello.value matches 2 rotated ~ 0 run function animated_java:gate/summon/chapter_2





# Assign scores and entity ID

execute as @e[type=#kello:generic/system,distance=..8,tag=aj.gate.root,tag=kello.entity.target.new] at @s run function kello:entity/decal/component/gate/spawn/chapter_1/score
return 1