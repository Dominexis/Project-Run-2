scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:melloflora_display/on_summon/as_rig_entities
execute if entity @s[tag=aj.melloflora_display.bone] run function #animated_java:melloflora_display/zzzzzzzz/on_summon/as_bones

