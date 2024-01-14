scoreboard players add flame rko.time 1

function rko:anim/flame/burn

execute if score flame rko.time matches 5.. run function rko:anim/flame/frame
return 1