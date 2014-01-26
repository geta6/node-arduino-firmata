exports.servo_write = (arduino, callback) ->

  setInterval ->
    angle = Math.random() * 180
    console.log "servo write 9 pin : #{angle}"
    arduino.analogWrite 9, angle
  , 1000
