# Set state

scoreboard players set #state kello.value 1
scoreboard players set @s kello.entity.timer 0




# Start flag animation

function kello:entity/checkpoint/animation/checkpoint





# Mark checkpoint

scoreboard players operation #local kello.player.checkpoint.id = @s kello.entity.checkpoint.id
scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id
scoreboard players operation #local kello.level.id = @s kello.level.id
scoreboard players operation #local kello.player.void_y = @s kello.player.void_y
scoreboard players set #flag_color kello.value -1

execute on passengers if entity @s[tag=kello.entity.part.mark_pointer] on origin at @s as @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] unless score @s kello.player.checkpoint.id = #local kello.player.checkpoint.id run function kello:entity/checkpoint/state/checkpoint/main_player

function kello:entity/checkpoint/state/checkpoint/set_color
execute if score #flag_color kello.value matches 0 run summon firework_rocket ~ ~1.75 ~ {Silent:0b,LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;921887],FadeColors:[I;16515033,15138559,12831956]},{Type:0,Flicker:1b,Colors:[I;16773526,10808784,10074367,9895851,16754903],FadeColors:[I;2501942]},{Type:4,Colors:[I;16580582,14611711,16316415],FadeColors:[I;1380129,659492]}]}}}}
execute if score #flag_color kello.value matches 1 run summon firework_rocket ~ ~1.75 ~ {Silent:0b,LifeTime:11,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16745094,16750958,15108970],FadeColors:[I;16768455,16766888]},{Type:4,Trail:1b,Colors:[I;10485639,6735707,8248901],FadeColors:[I;7602096,8250608]},{Type:4,Colors:[I;16745094,16750958,15108970],FadeColors:[I;16768455,16766888]}]}}}}
execute if score #flag_color kello.value matches 2 run summon firework_rocket ~ ~1.75 ~ {Silent:0b,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;3917055],FadeColors:[I;5185238]},{Type:4,Flicker:1b,Colors:[I;12557614],FadeColors:[I;8878701]},{Type:2,Trail:1b,Colors:[I;4557311],FadeColors:[I;15293695]}]}}}}
execute if score #flag_color kello.value matches 3 run summon firework_rocket ~ ~1.75 ~ {Silent:0b,LifeTime:14,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Trail:1b,Colors:[I;4756656,6785510,5530035,3681195],FadeColors:[I;4859297,1912186,3548764,7751303]},{Type:2,Flicker:1b,Colors:[I;16767037,15578440,16758876,16755284,16753738],FadeColors:[I;15226675,16086085,15890000,5215743]},{Type:4,Flicker:1b,Colors:[I;16767296,16760381,2131657,5337824],FadeColors:[I;16749609,16740155]}]}}}}

function kello:tick/level/refresh



# Update all loaded checkpoint flags and its children (NOTE: might laggy)

function kello:entity/checkpoint/generic/update_checkpoints