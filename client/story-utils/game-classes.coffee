class @GameObject
  constructor: ( sprite, x=0, y=0 )->
    @sprite = sprite
    @x = x
    @y = y

  move: ( direction ) ->
    switch direction
      when "right"
        @sprite.x += 10
      when "left"
        @sprite.x -= 10
      when "up"
        @sprite.y -= 10
      when "down"
        @sprite.y += 10

class @Character extends GameObject
  constructor: ( sprite, x, y, name ) ->
    super( sprite, x, y )
    @name = name or "Red"
