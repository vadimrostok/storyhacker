@GameScope = {}

Template["game"].onRendered ->
  GameScope.game = new Phaser.Game "100"
    , 512
    , Phaser.AUTO
    , "game-container"
    , {
      preload: =>
        GameScope.game.load.atlasJSONHash "bot"
          , "/sprites/running_bot.png"
          , "/sprites/running_bot.json"
      create: =>
        GameScope.game.stage.backgroundColor = "#124184"

        sprite = GameScope.game.add.sprite GameScope.game.world.centerX
          , GameScope.game.world.centerY
          , "bot"
        sprite.animations.add "run"
        sprite.animations.play "run", 10, yes

        GameScope.char = new Character sprite
          , GameScope.game.world.centerX
          , GameScope.game.world.centerY
          , "ROBOT"
      update: =>
        42
      render: =>
        GameScope.game.debug.spriteInfo GameScope.char.sprite
    }
