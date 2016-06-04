require 'net/http'
require 'json'

def generate
  counter = Random.new.rand(0..2)
  print 'Enter your device id: '
  device_id = gets.chomp.to_s
  uri = URI('http://calm-temple-20803.herokuapp.com/results')
  params = {'name' => 'coin name',
            'release_year' => time_rand,
            'weight' => Random.new.rand(10...500),
            'radius' => Random.new.rand(10...100),
            'device_id' => device_id,
            'status' => status(counter),
            'saved' => 'false',
            'pic' => "app/assets/images/pic#{Random.new.rand(1..3)}.jpg" }
  res = Net::HTTP.post_form(uri, params)
end

def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

def status(n)
  statuses = [ 'fake', 'undefined', 'success' ]
  statuses[n]
end
