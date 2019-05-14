require_relative 'config/environment'

puts "Rails v#{Rails::VERSION::STRING}"

puts "First render:"
puts Benchmark.measure { ApplicationController.render(template: 'test/test') }

puts "Subsequent renders:"
5.times do
  puts Benchmark.measure { ApplicationController.render(template: 'test/test') }
end
