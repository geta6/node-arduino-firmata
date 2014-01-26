exports.led_blink = (arduino, callback) ->

  stat = true
  setInterval ->
    console.log stat
    arduino.digitalWrite 13, stat
    arduino.digitalWrite 12, !stat
    stat = !stat
  , 300

  setTimeout ->
    return callback()
  , 1200