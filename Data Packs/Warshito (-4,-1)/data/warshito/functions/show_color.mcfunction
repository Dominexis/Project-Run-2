# This will tell you in your action bar which color are you, and will put a concrete in your head, for other players to know

function pr:player/time/compute

# Green
function help:d5606f45c69ade8710c8c580b4064ef4b00ddf8c5cf670a8a0732a8c39c97dfc
item replace entity @s[tag=Green] armor.head with minecraft:lime_concrete

# Blue
function help:3e059990ffd103c3970cdc240aead4419a964cb784f1fc2f6f5084351e2e8b7e
item replace entity @s[tag=Blue] armor.head with minecraft:blue_concrete

# Red
function help:3fcc760e7096a8e1fcf50803f112c08c76e28e02703e01763e2080bfa6de976e
item replace entity @s[tag=Red] armor.head with minecraft:red_concrete


return 1