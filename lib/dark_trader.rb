require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

Symbol_array =page.xpath("/html/body/div/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody//tr/td[3]/div/text()")

Price_array =page.xpath("/html/body/div/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody//tr/td[5]/a/text()")

Array_final = Symbol_array.map{|item| item = item.to_s}.zip(Price_array.map{|x| x = x.to_s}).map{|c,j| {c => j}}.to_a


