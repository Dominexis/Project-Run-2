scoreboard players operation #percentage inquognito.temp = @s inquognito.jetpack.fuel
scoreboard players operation #percentage inquognito.temp *= #100 pr.value
scoreboard players operation #percentage inquognito.temp /= @s inquognito.energy

execute if score #percentage inquognito.temp matches ..0 run title @s actionbar ""
execute if score #percentage inquognito.temp matches 1..5 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 6..10 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 11..15 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 16..20 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 21..25 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 26..30 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 31..35 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 36..40 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 41..45 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 46..50 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 51..55 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 56..60 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 61..65 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 66..70 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 71..75 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 76..80 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 81..85 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 86..90 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 91..95 run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"},{"translate":"\u25ae","color":"white"}]
execute if score #percentage inquognito.temp matches 96.. run title @s actionbar [{"text":"Energy: ","bold":true,"color":"white"},{"translate":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"light_purple"}]
