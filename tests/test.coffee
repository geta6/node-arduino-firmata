path = require 'path'
direquire = require 'direquire'

ArduinoFirmata = require '../'
fixture = direquire path.resolve 'tests', 'fixture'

arduino = new ArduinoFirmata()

describe 'ArduinoFirmata', ->

  it 'should analog read', (done) ->
    arduino.connect()
    arduino.on 'connect', ->
      console.log "connect #{arduino.serialport_name}"
      console.log "board version: #{arduino.boardVersion}"
      fixture.analog_read arduino, (err) ->
        arduino.close()
        return done err

  it 'should analog write', (done) ->
    arduino.connect()
    arduino.on 'connect', ->
      fixture.analog_read arduino, (err) ->
        arduino.close()
        return done err

