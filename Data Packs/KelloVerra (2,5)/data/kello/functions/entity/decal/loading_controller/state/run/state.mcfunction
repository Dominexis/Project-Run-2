# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.entity.timer matches ..0 if score #generator.local_level_id kello.value = @s kello.level.id run function kello:entity/decal/loading_controller/state/loading/start



scoreboard players remove @s[scores={kello.entity.timer=1..}] kello.entity.timer 1