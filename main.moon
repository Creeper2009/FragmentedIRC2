irc    = require "lib.irc"
socket = require "lib.socket"
sleep  = socket.sleep

bot = irc.new {nick = "fragbot"}

checker = (us, ch, me, bot) ->
  bot\sendNotice us.nick, "From #{ch}"

bot:hook "OnChat", (user, channel, message) ->
  checker user, channel, message, s

bot\connect "irc.alphachat.net"
bot\join "#bottesting"

while true
  s\think!
  sleep 0.3
