# Description:
#   Stand-up!
#
# Dependencies:
#   kaamelott
#
# Configuration:
#   None
#
# Author:
#   PKoin

HubotCron = require 'hubot-cronjob'

module.exports = (robot) ->
  # monday to friday, 9:20am
  pattern = '20 9 * * 1-5'
  timezone = 'Europe/Paris'
  new HubotCron pattern, timezone, ->
    room = 'blabla'
    robot.messageRoom room, "Hey @here, c'est l'heure du stand-up :)"
    robot.emit 'kaamelott:command', room
