execute if score #percentage inquognito.temp matches ..0 run data modify storage inquognito:data hud_energy_label set value '[{"text":"E","bold":false,"obfuscated":true,"color":"light_purple"},{"text":"n","bold":false,"obfuscated":false,"color":"red"},{"text":"e","bold":false,"obfuscated":true,"color":"light_purple"},{"text":"r","bold":false,"obfuscated":false,"color":"red"},{"text":"gy","bold":false,"obfuscated":true,"color":"light_purple"},{"text":": ","bold":false,"obfuscated":false,"color":"red"}]'
execute if score #percentage inquognito.temp matches 1.. run data modify storage inquognito:data hud_energy_label set value '[{"text":"E","bold":false,"obfuscated":true,"color":"light_purple"},{"text":"n","bold":false,"obfuscated":false,"color":"white"},{"text":"e","bold":false,"obfuscated":true,"color":"light_purple"},{"text":"r","bold":false,"obfuscated":false,"color":"white"},{"text":"gy","bold":false,"obfuscated":true,"color":"light_purple"},{"text":": ","bold":false,"obfuscated":false,"color":"white"}]'

execute if score #percentage inquognito.temp matches ..0 run data modify storage inquognito:data hud_energy_value set value '[{"nbt":"hud_energy_blockage","storage":"inquognito:data","interpret":true}]'
execute if score #percentage inquognito.temp matches 1..10 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae","color":"white"},{"text":"\\u25ae\\u25ae\\u25ae\\u25ae","color":"dark_gray"}]'
execute if score #percentage inquognito.temp matches 11..20 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae","color":"white"},{"text":"\\u25ae\\u25ae\\u25ae","color":"dark_gray"}]'
execute if score #percentage inquognito.temp matches 21..30 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae","color":"white"},{"text":"\\u25ae\\u25ae","color":"dark_gray"}]'
execute if score #percentage inquognito.temp matches 31..40 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae\\u25ae","color":"white"},{"text":"\\u25ae","color":"dark_gray"}]'
execute if score #percentage inquognito.temp matches 41..50 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae\\u25ae\\u25ae","color":"white"}]'
execute if score #percentage inquognito.temp matches 51..60 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae","color":"light_purple"},{"text":"\\u25ae\\u25ae\\u25ae\\u25ae","color":"white"}]'
execute if score #percentage inquognito.temp matches 61..70 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae","color":"light_purple"},{"text":"\\u25ae\\u25ae\\u25ae","color":"white"}]'
execute if score #percentage inquognito.temp matches 71..80 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae","color":"light_purple"},{"text":"\\u25ae\\u25ae","color":"white"}]'
execute if score #percentage inquognito.temp matches 81..90 run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae\\u25ae","color":"light_purple"},{"text":"\\u25ae","color":"white"}]'
execute if score #percentage inquognito.temp matches 91.. run data modify storage inquognito:data hud_energy_value set value '[{"text":"\\u25ae\\u25ae\\u25ae\\u25ae\\u25ae","color":"light_purple"}]'

data modify storage inquognito:data hud_energy_blockage set value '{"text":"\\u25ae\\u25ae\\u25ae\\u25ae\\u25ae","color":"dark_gray"}'

return 1