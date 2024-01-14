#show the jump bar in the GUI
function pr:player/time/compute
execute if score @s technodono_plot.jump_counter matches 0..9 run function help:624e218bf96aa21bec57f6f1ca56def29406675e001dfb44db623b87838841c1
execute if score @s technodono_plot.jump_counter matches 10..19 run function help:ef73a5424162a0f0d0ef2899c100878f85ea3e7e80749fa2a750d9211247414a
execute if score @s technodono_plot.jump_counter matches 20..29 run function help:61ce3a18041c035cebf0d7dac685f6085a3043761c2125ee47781c6f4312a871
execute if score @s technodono_plot.jump_counter matches 30..39 run function help:58c105b3e5db58e989725df58c8fa2c1a4e72045fbe04bd2d929ff3729e91199
execute if score @s technodono_plot.jump_counter matches -1 run function help:7cf6ef45bf2e285f705d3f4dc71274720474165f6cda4d8302043af1433a684e

#execute if score @s technodono_plot.jump_counter matches -1 run title @s actionbar [{"text":"\uEaa0\ue000\uEaa0\ue000\uEccB\ue001\uEaa0\ue000\uEaa0\ue000","font":"beat_bounce:jump_gui"},{"nbt":"tag.minutes","storage":"pr:data","interpret":true,"font":"minecraft:default"},{"text":":","color":"gray","font":"minecraft:default"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true,"font":"minecraft:default"},{"text":".","color":"gray","font":"minecraft:default"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true,"font":"minecraft:default"}]
return 1