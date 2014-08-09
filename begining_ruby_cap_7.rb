#require 'net/http'
## Net::HTTP.get_print('www.rubyinside.com','/')
#
#url = URI.parse('http://www.rubyinside.com/')
#response = Net::HTTP.start(url.host, url.port) do |http|
#  http.get(url.path)
#end
#p content = response.body


require 'hpricot'
puts 'OK' if defined?(Hpricot)