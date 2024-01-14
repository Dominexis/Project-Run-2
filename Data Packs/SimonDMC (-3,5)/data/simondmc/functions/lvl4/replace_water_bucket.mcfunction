### Replaces a default water bucket with one with axolotl hint lore
# Called by lvl4/tick
clear @s minecraft:water_bucket
give @s minecraft:water_bucket{display:{Lore:['{"text":"","type":"text"}','{"text":"Can pick up:","color":"gray","italic":false,"type":"text"}','{"text":"Axolotl","color":"dark_gray","italic":false,"type":"text"}']}}
return 1