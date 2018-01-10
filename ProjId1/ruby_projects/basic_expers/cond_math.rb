def sum(a,b) a + b end

def minus(a,b) a - b end

def mult(a,b) a * b end

def devide(a,b) a / b end

def mod(a,b) a % b end

def make_oper(oper_num, a, b)
  if (oper_num == 1)
    puts "#{a} + #{b} = #{sum(a,b)}"
  elsif (oper_num == 2)
    puts "#{a} - #{b} = #{minus(a,b)}"
  elsif (oper_num == 3)
    puts "#{a} * #{b} = #{mult(a,b)}"
  elsif (oper_num == 4)
    puts "#{a} / #{b} = #{devide(a,b)}"
  elsif (oper_num == 5)
    puts "#{a} % #{b} = #{mod(a,b)}"
  else
    puts "Wrong number choice or input"
  end
end

puts "What operation do you want to do?
  1) sum
  2) minus
  3) mult
  4) devide
  5) mod"
oper_num = gets.chomp.to_i

puts "First num: "
a = gets.chomp.to_f
puts "Second num: "
b = gets.chomp.to_f

make_oper(oper_num, a, b)