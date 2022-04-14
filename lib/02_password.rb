def signup
	puts "Definir un mot de passe:"
	puts "> "
	$password = gets.chomp
	return $password
end

def login
	puts "Entrez votre mot de passe:"
	puts "> "
	$login = gets.chomp
	while $login != $password do
		puts "Mot de passe invalide."
		puts "Entrez votre mot de passe:"
		print "> "
		$login = gets.chomp
	end
end

def welcome_screen

	puts "Welcome to the Secret Club."
	puts "ATTENTION DERRIERE TOI!!!"
	puts "Naaaaan, j'rigole."
end


def perform
	signup
	login
	welcome_screen
end

perform