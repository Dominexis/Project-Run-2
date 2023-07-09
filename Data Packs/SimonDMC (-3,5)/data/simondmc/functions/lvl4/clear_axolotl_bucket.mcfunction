### Replaces a player's axolotl bucket with a water bucket (and sends a witty chat message)
clear @s axolotl_bucket
give @s water_bucket
tellraw @s {"text":"Your axolotl slipped out of the bucket...","color":"gray","italic":true}