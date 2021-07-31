require 'faraday'

url = 'https://www.loc.gov/collections'
response = Faraday.get url 

puts response.status

puts response.headers