require 'faraday'


conn = Faraday.new(
  url: 'https://www.loc.gov/collections',
  params: {fo:'json', at:'results'},
  headers: {'Content-Type' => 'application/json'}
)

response = conn.get

puts response.status

puts response.headers