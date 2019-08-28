require_relative "dl.rb"

class Book
	attr_accessor :title, :author, :link

	def initialise(title, author, link)
		@title = title
		@author = author
		@link = link
	end

	def open
		file_to_open = "#{target_dir_name}/#{filename}"
		system %{open "#{file_to_open}"}
	end

end

puts "Welcome. Select action. "
puts "----------------------------------------------------"
puts "|1. Add new book.| |2. Remove book.| |3. Open book.|"
puts "----------------------------------------------------"

choice = gets.chomp

case choice[0]
when 1
	puts"Enter the book title"
	book_title = gets.chomp
	puts"Enter book author"
	book_author = gets.chomp
	puts"Enter the url location"
	loc = gets.chomp

	shelf = Book.new(book_title, book_author, loc)
when 2
	shelf = nil

when 3
	Book.open
else
	puts "Select valid choice. [1, 2 or 3]."
end



