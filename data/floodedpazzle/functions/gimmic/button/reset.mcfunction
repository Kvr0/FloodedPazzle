#> floodedpazzle:gimmic/button/reset
# @api

## Tag
    tag @s remove gimmic.button.pushed

## ItemRotation
    data modify entity @s ItemRotation set from storage calculation: gimmic.button.rotation.default
    execute store result score $button.rotation temporary run data get entity @s ItemRotation 1

## ChangeFlag
    function floodedpazzle:gimmic/changed

