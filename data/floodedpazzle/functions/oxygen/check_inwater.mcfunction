#> floodedpazzle:oxygen/check_inwater
# @within function floodedpazzle:oxygen/tick

## In Water
    execute anchored eyes if block ^ ^ ^ water if score @s floodedpazzle.oxygen matches 1.. run scoreboard players remove @s floodedpazzle.oxygen 1

## In Air
    execute anchored eyes unless block ^ ^ ^ water if score @s floodedpazzle.oxygen < @s floodedpazzle.maxoxygen run scoreboard players add @s floodedpazzle.oxygen 5
    execute if score @s floodedpazzle.oxygen > @s floodedpazzle.maxoxygen run scoreboard players operation @s floodedpazzle.oxygen = @s floodedpazzle.maxoxygen

## Run Out
    execute if score @s floodedpazzle.oxygen matches 0 run function #floodedpazzle:oxygen/runout
