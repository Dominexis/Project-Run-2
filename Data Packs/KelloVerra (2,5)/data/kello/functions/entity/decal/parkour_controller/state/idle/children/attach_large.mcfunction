## LEADERS NOTICE, REASON NOT USING PR.TARGET IN PLACEDICATOR ENTITY SELECTOR :
##  - kello.ignore tagged entities will not have pr.target tagged for them, 
##    the reason is kello.ignore tagged entities are primarely display entities for decos
##    the indicator is not purposedly a decorational but simply as an accessibility option
##    and i decided that kello.ignore is the best fit for performance

##    i could change it to instead use kello.exclude instead to preserve pr.target.


execute align xyz positioned ~-1.5 ~-1.9 ~-1.5 as @a[tag=pr.target,dz=3,dy=1.5,dx=3,predicate=kello:midair] positioned ~1.5 ~1.9 ~1.5 run tp @s ~.5 ~1.05 ~.5
kill @e[type=item_display,tag=kello.entity.type.placedicator,tag=kello.entity.type.large,distance=..1,sort=nearest]
fill ~-1 ~ ~-1 ~1 ~-2 ~1 barrier replace air