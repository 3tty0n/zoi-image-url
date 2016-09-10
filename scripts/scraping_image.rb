require 'open-uri'
require 'nokogiri'

# newgame9
url = 'http://blog.livedoor.jp/anime_info555/archives/1060634432.html'
# newgame8話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1060438150.html'
# newgame 7話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1060248251.html'
# newgame 6話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1060052528.html'
# newgame 5話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1059843360.html'
# newgame 4話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1059638437.html'
# newgame 3話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1059432369.html'
# newgame 2話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1059231869.html'
# newgame 1話
# url = 'http://blog.livedoor.jp/anime_info555/archives/1059025536.html'
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css('img').each do |image|
  p image.attribute('src').value
end
