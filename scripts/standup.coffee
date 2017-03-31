# Description:
#   Stand-up!
#
# Dependencies:
#   kaamelott
#
# Configuration:
#   None
#
# Commands:
#   hubot standup -- It's time to stand-up!
#
# Author:
#   PKoin

module.exports = (robot) ->
  robot.respond /standup/i, (res) ->
    robot.emit 'kaamelott:command', res
