# Animation

#execute if score @s kello.decal.state matches 0 if score #boolean_0 kello.value matches 1 run function kello:entity/decal/decwheel/animation/resume_rotate_trn



# Component verification

execute if entity @s[tag=kello.decal.component] run function kello:entity/decal/contraption_controller/state/run/children/component/verify




# SFX sequence

execute if entity @s[tag=kello.entity.type.soundsource] run function kello:entity/decal/contraption_controller/state/run/children/sfx/sequence



# Cog

execute if entity @s[tag=aj.decwheel.root] if score @s kello.decal.state matches 0.. run function kello:entity/decal/contraption_controller/state/run/children/cog




# Thrown state
execute if score #local kello.entity.timer matches 1 if score @s kello.decal.state matches 1 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,distance=..4,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state/run/children/cooldown_revert/main
execute if score #local kello.entity.timer matches 1 if score @s kello.decal.state matches 3 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,distance=..4,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state/run/children/cooldown_revert/main