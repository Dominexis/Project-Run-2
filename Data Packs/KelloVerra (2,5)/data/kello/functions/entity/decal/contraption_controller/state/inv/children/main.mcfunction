# Animation

#execute if entity @s[tag=!kello.decal.controller_children] run function kello:entity/decal/contraption_controller/state/inv/children/init
execute if entity @s[tag=kello.decal.component] run function kello:entity/decal/contraption_controller/state/inv/children/component/verify



# SFX sequence

execute if entity @s[tag=kello.entity.type.soundsource] run function kello:entity/decal/contraption_controller/state/inv/children/sfx/sequence