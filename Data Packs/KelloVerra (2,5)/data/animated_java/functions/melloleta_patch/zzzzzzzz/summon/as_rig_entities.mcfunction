scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:melloleta_patch/on_summon/as_rig_entities
execute if entity @s[tag=aj.melloleta_patch.bone] run function #animated_java:melloleta_patch/zzzzzzzz/on_summon/as_bones
tp @s ~ ~ ~ ~ ~