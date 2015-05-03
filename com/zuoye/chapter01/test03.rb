#!/usr/bin/ruby -w

puts 'escape using "\\"';
puts 'That\'s right';

puts "Multiplication Value : #{24*60*60}";

name="Ruby" 
puts name 
puts "#{name+",ok"}" 

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

#范围区间
(10..15).each do |n| 
   print n, ' ' 
end








