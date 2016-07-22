module.exports = (robot) ->
  robot.hear /ぞい/i, (msg) ->
    msg.send msg.random ["http://livedoor.blogimg.jp/anime_info555/imgs/f/c/fc404df8.jpg","http://livedoor.blogimg.jp/anime_info555/imgs/c/9/c9f1a00f.jpg"]
