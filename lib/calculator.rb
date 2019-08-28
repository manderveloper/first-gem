def get_int_values(n)
  n.times.map.with_index { |n|
    print "Enter value ##{ 1 + n }: "
    gets.chomp.to_f
  }
end

puts "Would you like to [a]dd, [m]ultiply, [d]ivide or [s]ubtract?"
reply = gets.chomp

puts "How many numbers?"
operands = gets.chomp.to_i
case reply[0]
	when 'a'
		puts "Enter numbers to add?"
		operator = :+
	when 's'
		puts "Enter numbers to subtract?"
		operator = :-
	when 'm'
		puts "Enter numbers to multiply?"
		operator = :*
	when 'd'
		puts "Enter numbers to multiply?"
		operator = :/
		
	else
		puts "Enter a valid operator[a, m, s or d]"
end

solution = get_int_values(operands).inject(operator)
puts "The answer is... #{ solution }"

