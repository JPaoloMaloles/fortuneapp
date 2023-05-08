require "http"
api_data = HTTP.get("http://localhost:3000/terminal_example")
api_json = api_data.parse(:json)
puts "the API:"
p api_json
puts
first_color = api_json["message"][0][0]["color"]
second_type = api_json["message"][1][0]["type"]
puts "The first color is: #{first_color}"
puts "The second type is: #{second_type}"
