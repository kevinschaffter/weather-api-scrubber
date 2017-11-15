require 'active_support/all'
require 'HTTParty'
require 'JSON'


url = "http://api.openweathermap.org/data/2.5/weather?q=Miami+Beach,FL&appid=c38d29204353577f04f9a8b861e3c70e"
response = HTTParty.get(url)
weather = JSON.parse(response.body)


puts weather

farenheit = (weather["main"]["temp"] * 9) / 5 - 459.67




puts "Today's Date is #{DateTime.now}"

puts "It is currently #{farenheit.round(2)} with #{weather["weather"][0]["description"].capitalize}" 




