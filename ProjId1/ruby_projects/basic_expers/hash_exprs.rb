# -- 3 - My prog - filling Hash
hash_asf = {}
literas_arr = ('a'..'z').to_a
arr_size = literas_arr.length
numb_arr = (0..arr_size).to_a
(0..arr_size-1).each { |i|
  # hash_asf[:literas_arr[i]] = numb_arr[i]
  hash_asf[:literas_arr[i]] = i
  puts "#{i}, #{literas_arr[i]}, #{numb_arr[i]}"
}
hash_asf

# -- 2 - Iteration
numbers = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 10}
number.each { |key, value| puts key}
numbers.each { |key, value| puts key}
numbers.each { |key, value| puts key, value}
numbers.each { |key, value| puts "#{key}, #{value}"}
numbers.each {|k,v| numbers.delete(k) if v > 3 }
# => {:a=>1, :b=>2, :c=>3}
numbers[:e] = 5; numbers[:d] = 10
# {:a=>1, :b=>2, :c=>3, :e=>5, :d=>10}
numbers.select {|k,v| v.odd? }

# -- 1 - Basic
system 'cls' # - clear console

my_detailes = {"name" => "Alice", "favicon" => "red"}

my_detailes[0]
# nil
my_detailes[1]
# nil
my_detailes["name"]
# "Alice"
myhash = {a: 1, b: 2, c: 3}
# {:a=>1, :b=>2, :c=>3}
myhash[a]
# NameError: undefined local variable or method `a' for main:Object
#         from (irb):7
#         from D:/Ruby24-x64/bin/irb.cmd:19:in `<main>'
myhash["a"]
# nil
# {:a=>1, :b=>2, :c=>3}
myhash[:a]
# 1
myhash[:name] = "Bob"
# "Bob"
# {:a=>1, :b=>2, :c=>3, :name=>"Bob"}
myhash[:d] = 5
# 5
# {:a=>1, :b=>2, :c=>3, :name=>"Bob", :d=>5}
myhash.delete(:name)
# "Bob"
# {:a=>1, :b=>2, :c=>3, :d=>5}
