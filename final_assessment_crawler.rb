require 'open-uri'
require 'nokogiri'

queue = ['http://its.taipei.gov.tw/m/aspx/park/parkF.aspx?lang=Cht%C2%AEion=%E5%A3%AB%E6%9E%97%E5%8D%80&sn=072']
uri = URI(queue.shift).normalize
doc = Nokogiri::HTML(open(uri))
result = doc.css('table tr td#labTotal').text
puts result

#request cookie不知道怎麼給