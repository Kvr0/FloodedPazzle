#> floodedpazzle:gimmic/eye/place
# 監視者を召還
# @api

## 召還
    summon drowned ~ ~ ~ {Tags:[gimmic,gimmic.eye,new],NoGravity:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],IsBaby:0b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]}

## OhMyDat
    execute as @e[tag=gimmic.eye,tag=new] run function #oh_my_dat:please

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].floodedpazzle.gimmic.eye set from storage floodedpazzle: input.eye

## New
    tag @e remove new

## Reset
    data modify storage floodedpazzle: input.eye set value {rx:{min:-45,max:45},ry:{min:-45,max:45},lose:10,distance:10}
