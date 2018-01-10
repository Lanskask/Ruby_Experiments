a.reverse
a.reverse!
a.shuffle
a.length
a[0]
puts a

(0..3).to_a

z = (0..9).to_a
z << 25 # ad 25 to the end of arr
z.push(25) # the same as previous
z.unshift(-1) # add item to the beginning of the array
z.pop # remove last el from arr (and get this el)
z.uniq # display only unique ellements


y = (0..99).to_a.shuffle!
y.each {|i| puts i}
# | - is called pipe

for num in y
  puts "Hi #{num}"
end

names.each do |name|
  puts "Hello #{name}"
end

names.each {|name| puts "Hello, #{name.upcase}"} # or capitalize

y.select { |num| num.even? } # print only even (or odd) 
# .select - is as (a) filter

y.each {|num| print "#{num}, " if num.even? }.sort
# print - for output without new line

p = ["My", "name", "is", "Joey"]
p2 = %w[My name is Joey]
p.join(" ")
# result: "My name is Joey"