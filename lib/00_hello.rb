def say_hello(first_name)
	puts "Hello, #{first_name} !"
end

def ask_first_name
	puts "Quel est ton prénom?"
	puts "> "
	first_name = gets.chomp
	return first_name
end

def prompt
	first_name = ask_first_name
	say_hello(first_name)
end

prompt