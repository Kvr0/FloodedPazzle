#> floodedpazzle:gimmic/tick
# @within function floodedpazzle:_/tick

## Button
    function floodedpazzle:gimmic/button/tick

## Eye
    function floodedpazzle:gimmic/eye/tick

## ChangeFlag
    execute if data storage floodedpazzle: gimmic{changed:1b} run function #floodedpazzle:gimmic/changed
    data modify storage floodedpazzle: gimmic.changed set value 0b

## Reset
    function calculation:reset/_
