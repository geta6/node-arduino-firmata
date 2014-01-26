exports.digital_read = (arduino, callback) ->

  setInterval ->
    arduino.pinMode 7, ArduinoFirmata.INPUT
    pin_stat = arduino.digitalRead 7
    console.log "pin 7 -> #{pin_stat}"
  , 100

  setTimeout ->
    return callback()
  , 1200