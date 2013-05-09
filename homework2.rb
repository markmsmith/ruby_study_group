#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'my_array.rb'

myArray = MyArray.new([1, 2, 3])

puts("each:")
myArray.each do |value|
	puts(value)
end

puts("map:")
mapped = myArray.map do |value|
	value * 3
end
puts(mapped)

puts("map next:")
mapped = myArray.map do |value|
	next value * 3
end
puts(mapped)

puts("map alt lambda:")
mapped = myArray.mapLambda( lambda {|value| value * 3 } )
puts(mapped)

myArray.groupHello("Mark", "Dina", "Alan", "Steven")
myArray.hello()
myArray.hello("Rebecca")

myArray.eachGreet("Mark", "Dina", "Alan", "Steven") do |greeting|
	puts( greeting.upcase() )
end