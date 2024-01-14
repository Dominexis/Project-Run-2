# Animation

#execute if score @s kello.decal.state matches 0 if score #boolean_0 kello.value matches 1 run function kello:entity/decal/decwheel/animation/resume_rotate_trn



# Component verification

execute if entity @s[tag=kello.decal.component] run function kello:entity/decal/loading_controller/state/run/children/component/verify




# Cog

execute if entity @s[tag=aj.decwheel.root] run function kello:entity/decal/loading_controller/state/run/children/cog
return 1