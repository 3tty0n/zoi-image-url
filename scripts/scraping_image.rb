require 'open-uri'
require 'nokogiri'

newgame_urls = ['http://blog.livedoor.jp/anime_info555/archives/1059025536.html',
  'http://blog.livedoor.jp/anime_info555/archives/1059231869.html',
  'http://blog.livedoor.jp/anime_info555/archives/1059432369.html',
  'http://blog.livedoor.jp/anime_info555/archives/1059638437.html',
  'http://blog.livedoor.jp/anime_info555/archives/1059843360.html',
  'http://blog.livedoor.jp/anime_info555/archives/1060052528.html',
  'http://blog.livedoor.jp/anime_info555/archives/1060248251.html',
  'http://blog.livedoor.jp/anime_info555/archives/1060438150.html',
  'http://blog.livedoor.jp/anime_info555/archives/1060634432.html',
  'http://blog.livedoor.jp/anime_info555/archives/1060822047.html',
  'http://blog.livedoor.jp/anime_info555/archives/1061001328.html'
]
episode = 11
url = newgame_urls[episode - 1]
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css('img').each do |image|
  p image.attribute('src').value
end
