# Branch to specific components based of the "normal counterpart" behavior

execute if entity @s[tag=kello.entity.type.chain_platform   ] run function kello:entity/decal/contraption_controller/state/run/children/component/chain_platform/frames
execute if entity @s[tag=kello.entity.type.gate_0           ] run function kello:entity/decal/contraption_controller/state/run/children/component/gate/frames