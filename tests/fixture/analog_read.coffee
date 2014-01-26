exports.analog_read = (arduino, callback) ->

  setInterval ->
    an = arduino.analogRead 0
    console.log an
  , 300

  setTimeout ->
    return callback()
  , 1200
