#> text_particle:load
#
# スコアボードを用意する
#
# @within tag/function minecraft:load

#> ストレージ
# @public
    #declare storage text_particle:

#> タグ
# @public
    #declare tag Init
    #declare tag TextParticle

# スコアボード
    scoreboard objectives add TextParticle.Tick dummy
    scoreboard objectives add TextParticle.Core dummy
    scoreboard objectives add TextParticle.Temporary dummy
    scoreboard objectives add TextParticle.Tick dummy
    scoreboard objectives add TextParticle.Frame dummy

# 数値設定
    scoreboard players set $1 TextParticle.Core 2