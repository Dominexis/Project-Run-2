title @s actionbar [{"text":"\ue004\ue003\ue003\ue001\ue001\ue000","font":"kello:space","obfuscated": false},{"text":"\ue001","font":"kello:keybind/shift","obfuscated": true},{"text":" Flee","font":"minecraft:default","obfuscated": false},{"text":"\ue004\ue002\ue001\ue001\ue000","font":"kello:space","obfuscated": false},{"nbt":"tag.minutes","storage":"pr:data","interpret":true,"font": "kello:lower","obfuscated": false},{"text":":","color":"gray","font": "kello:lower","obfuscated": false},{"nbt":"tag.seconds","storage":"pr:data","interpret":true,"font": "kello:lower","obfuscated": false},{"text":".","color":"gray","font": "kello:lower","obfuscated": false},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true,"font": "kello:lower","obfuscated": false}]

execute if entity @s[tag=kello.player.grappling] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 2