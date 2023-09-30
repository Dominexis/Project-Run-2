data merge storage kello:value {tag:{component_entity:{transformation:{translation:[0f,0f,0f]}}}}
data modify entity @s transformation.translation set from storage kello:value tag.component_entity.transformation.translation

execute if entity @s[tag=kello.entity.platform] run function kello:entity/decal/contraption_controller/state/out/children/component/chain_platform/platform