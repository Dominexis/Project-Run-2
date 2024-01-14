


#runs every sec as all players in my plot
experience add @s -1 levels
execute store result score xpLevel zombie_rngV run experience query @s levels
execute if score xpLevel zombie_rngV matches 1..5 run function zombie1111:player_warnhealth
execute if score xpLevel zombie_rngV matches ..0 run kill @s

return 1