# Verification

execute if entity @s[tag=aj.decwheel.root] run function kello:entity/decal/contraption_controller/state/out/children/decwheel
execute if entity @s[tag=kello.entity.type.chain_platform] run function kello:entity/decal/contraption_controller/state/out/children/component/chain_platform/verify







# Add tag

tag @s add kello.decal.controller_children
tag @s add kello.decal.controller.contraption
return 1