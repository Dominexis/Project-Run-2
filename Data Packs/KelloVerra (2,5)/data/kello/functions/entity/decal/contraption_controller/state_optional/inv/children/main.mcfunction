# Animation

#execute if entity @s[tag=!kello.decal.controller_children] run function kello:entity/decal/contraption_controller/state_optional/inv/children/init
execute if entity @s[tag=kello.decal.component] run function kello:entity/decal/contraption_controller/state/inv/children/component/verify



# Cog

execute if entity @s[tag=aj.decwheel.root] run function kello:entity/decal/contraption_controller/state/inv/children/cog



# SFX sequence

# execute if entity @s[tag=kello.entity.type.soundsource] run function kello:entity/decal/contraption_controller/state/inv/children/sfx/sequence