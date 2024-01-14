# Runs pipe particles for section 4

execute positioned ~ ~-46 ~-26 run function eosand:particles/junctions/yellow
execute positioned ~-13 ~-46 ~-26 run function eosand:particles/junctions/red
execute positioned ~-13 ~-46 ~-13 run function eosand:particles/junctions/pink
execute positioned ~-13 ~2 ~-13 run function eosand:particles/junctions/purple
execute positioned ~-13 ~2 ~13 run function eosand:particles/junctions/pink
execute positioned ~-26 ~2 ~13 run function eosand:particles/junctions/red
execute positioned ~-26 ~2 ~26 run function eosand:particles/junctions/pink
execute positioned ~-13 ~2 ~26 run function eosand:particles/junctions/green
execute positioned ~-13 ~50 ~26 run function eosand:particles/junctions/purple
execute positioned ~-26 ~50 ~26 run function eosand:particles/junctions/red
execute positioned ~-26 ~50 ~-26 run function eosand:particles/junctions/yellow
execute positioned ~26 ~50 ~-26 run function eosand:particles/junctions/green
execute positioned ~26 ~50 ~26 run function eosand:particles/junctions/pink
execute positioned ~ ~50 ~26 run function eosand:particles/junctions/red
return 1