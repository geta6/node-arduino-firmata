exports.analog_write = (arduino, callback) ->

  console.log "connect!! #{arduino.serialport_name}"
  console.log "board version: #{arduino.boardVersion}"

  setInterval ->
    an = Math.random() * 255
    console.log "analog write 9 pin : #{an}"
    arduino.analogWrite 9, an
  , 100

  setTimeout ->
    return callback()
  , 1200