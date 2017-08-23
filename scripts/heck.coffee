module.exports = (robot) ->
  [
    /doggo/i,
    /^heck$/i,
    /send halp pls/i,
    /stop it fren/,
    /doing me a concern/,
    /blep/,
    /^heck off$/i,
    /^bork/i,
    /^borf/i,
    /^bjork/i,
    /frighten/i,
    /supplying me with anxiety/i,
    /a bother/i,
    /stucc/i
  ].map (regex) ->
    robot.hear regex, (msg) ->
      robot.http('https://g4vlcenksd.execute-api.us-east-1.amazonaws.com/prod/heck')
        .post() (err, res, body) ->
          text = JSON.parse(body).text
          msg.send(text)
