#> floodedpazzle:_/install
# @within tag/function installmanager:install

## 順序
    datapack disable "file/FloodedPazzle"
    datapack enable "file/FloodedPazzle" after "file/s4core"

## Oxygenゲージ
    scoreboard objectives add floodedpazzle.maxoxygen dummy
    scoreboard objectives add floodedpazzle.oxygen dummy
    function floodedpazzle:oxygen/make_string

## InstallManagerへの登録
    data modify storage installmanager: installed append value FloodedPazzle
    data modify storage installmanager: relation append value {id:FloodedPazzle,dep:[InstallManager,TickManager]}
