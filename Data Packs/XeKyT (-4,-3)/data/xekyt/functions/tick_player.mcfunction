#Tp to first area
execute if entity @s[predicate=xekyt:ondiamond] run tp @s ~-12 ~33 ~7

#Diamond Block Tp Particles
execute if score True TPParticlesShow matches 1 run particle minecraft:reverse_portal ~0 ~.5 ~-5 .1 1 .1 0 10 force @a

#Checkpoint Set
# execute as @s[predicate=xekyt:oncheckpoint] run function pr:player/checkpoint/mark

#Oops You Fell
execute as @s[predicate=xekyt:onorangestainedglass] run kill @s
execute as @s[predicate=xekyt:onwhitestainedglass] run kill @s