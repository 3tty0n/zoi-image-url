require 'open-uri'
require 'nokogiri'

# newgame 4話
url = 'http://blog.livedoor.jp/anime_info555/archives/1059638437.html'
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
