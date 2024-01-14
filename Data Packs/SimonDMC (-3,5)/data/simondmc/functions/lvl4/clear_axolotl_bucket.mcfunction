### Replaces a player's axolotl bucket with a water bucket (and sends a witty chat message)
clear @s minecraft:axolotl_bucket
give @s minecraft:water_bucket
tellraw @s {"text":"Your axolotl slipped out of the bucket...","color":"gray","italic":true,"type":"text"}
return 1