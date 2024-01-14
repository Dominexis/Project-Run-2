

execute store result score plHealth zombie_rngV run data get entity @s AbsorptionAmount
effect clear @s minecraft:absorption
execute if score plHealth zombie_rngV matches 0.. run effect give @s minecraft:absorption infinite 0 true
execute if score plHealth zombie_rngV matches 4.. run effect give @s minecraft:absorption infinite 1 true
execute if score plHealth zombie_rngV matches 8.. run effect give @s minecraft:absorption infinite 2 true
execute if score plHealth zombie_rngV matches 12.. run effect give @s minecraft:absorption infinite 3 true
execute if score plHealth zombie_rngV matches 16.. run effect give @s minecraft:absorption infinite 4 true
execute if score plHealth zombie_rngV matches 20.. run effect give @s minecraft:absorption infinite 5 true
execute if score plHealth zombie_rngV matches 24.. run effect give @s minecraft:absorption infinite 6 true
execute if score plHealth zombie_rngV matches 28.. run effect give @s minecraft:absorption infinite 7 true
execute if score plHealth zombie_rngV matches 32.. run effect give @s minecraft:absorption infinite 8 true
#execute if score plHealth zombie_rngV matches 36.. run effect give @s absorption infinite 9 true
#execute if score plHealth zombie_rngV matches 40.. run effect give @s absorption infinite 10 true

return 1