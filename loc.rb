require 'faraday'
require 'json'


conn = Faraday.new(
  url: 'https://www.loc.gov/item/2014717546',
  #url: 'https://www.loc.gov/item/2014717546d',
  params: {fo:'json'},
  headers: {'Content-Type' => 'application/json'}
)

response = conn.get

body_hash = JSON.parse(response.body)

if response.success?
    @citations = body_hash["cite_this"]
else
    #error = body["meta"]["errorDetail"]
    error = "that did not work"
end



puts response.status

puts response.headers

puts @citations

puts error