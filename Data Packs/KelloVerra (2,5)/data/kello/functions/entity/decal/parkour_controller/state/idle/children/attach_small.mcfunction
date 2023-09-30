## LEADERS NOTICE, REASON NOT USING PR.TARGET IN PLACEDICATOR ENTITY SELECTOR :
##  - kello.ignore tagged entities will not have pr.target tagged for them, 
##    the reason is kello.ignore tagged entities are primarely display entities for decos
##    the indicator is not purposedly a decorational but simply as an accessibility option
##    and i decided that kello.ignore is the best fit for performance

##    i could change it to instead use kello.exclude instead to preserve pr.target.


execute align xyz positioned ~-.625 ~-1.9 ~-.625 as @a[tag=pr.target,dz=1.25,dy=1.5,dx=1.25,predicate=kello:midair] positioned ~.625 ~1.9 ~.625 run tp @s ~.5 ~1.05 ~.5
kill @e[type=item_display,tag=kello.entity.type.placedicator,tag=kello.entity.type.small,distance=..1,sort=nearest]
fill ~ ~ ~ ~ ~-2 ~ barrier replace air