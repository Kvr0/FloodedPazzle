#> floodedpazzle:gimmic/eye/check_catch
# @within function floodedpazzle:gimmic/eye/detect

## Distance
    tag @s add raycasting.target
    function calculation:reset/skip
    function raycasting:distance/_

    execute store result score $raycasting:block/_.maxdistance temporary run data get storage raycasting: result.distance 1
    execute if score $raycasting:block/_.maxdistance temporary > $floodedpazzle:gimmic/eye/check.distance temporary run scoreboard players operation $raycasting:block/_.maxdistance temporary = $floodedpazzle:gimmic/eye/check.distance temporary
## Check
    summon marker ~ ~ ~ {Tags:[new]}
    execute at @e[tag=eye.target,limit=1] run tp @e[tag=new,limit=1] ~ ~ ~ facing entity @s eyes
    function calculation:reset/skip
    execute anchored eyes positioned ^ ^ ^ as @e[tag=new,limit=1] run function raycasting:block/_
    kill @e[tag=new]

## Catch
    execute if data storage raycasting: result{hit:0b} run function floodedpazzle:gimmic/eye/catch

## Tag
    tag @s remove raycasting.target
