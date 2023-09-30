scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:melloflora_lantern_sho/on_summon/as_rig_entities
execute if entity @s[tag=aj.melloflora_lantern_sho.bone] run function #animated_java:melloflora_lantern_sho/zzzzzzzz/on_summon/as_bones

