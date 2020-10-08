require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))

puts email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")