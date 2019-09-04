puts "Use the calculator or book archive. [(c)alculaor or (a)rchive]"
choice = gets.chomp

require_relative "calculator.rb"
require_relative "beta.rb"

case choice[0]
when "c"
	include "Calculator"
when "a"
	include "Beta"
else
	puts "Select valid option [a] or [c]"
end
