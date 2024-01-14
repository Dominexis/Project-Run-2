scoreboard players set pipes rko.ambient 0

execute positioned ~ ~130 ~ run playsound rko:ambient.pipes master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 5 1
return 1