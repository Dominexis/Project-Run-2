scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:comet_flake/on_summon/as_rig_entities
execute if entity @s[tag=aj.comet_flake.bone] run function #animated_java:comet_flake/zzzzzzzz/on_summon/as_bones

