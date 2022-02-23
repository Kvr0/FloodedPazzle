#> floodedpazzle:oxygen/check_inwater
# @within function floodedpazzle:oxygen/tick

## In Water
    execute anchored eyes if block ^ ^ ^ water run data modify storage floodedpazzle: input.oxygen.value set value 1

## In Air
    execute anchored eyes unless block ^ ^ ^ water run data modify storage floodedpazzle: input.oxygen.value set value -5

## 消費
    function floodedpazzle:oxygen/consume/_
