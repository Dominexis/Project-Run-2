# Spawn entity

function animated_java:falling_platform/summon/air



# Assign scores and entity ID

execute as @e[type=#kello:generic/system,distance=..8,tag=aj.falling_platform.root,tag=kello.entity.target.new] at @s run function kello:entity/decal/component/falling_platform/spawn/chapter_1/score
return 1