def move(roll, step)
	if roll == 5 || roll == 6 
		step += 1
		puts "Tu as fait #{roll}."
		puts "Monte d'une marche."
	elsif roll == 1
		if step > 0
			step -= 1
			puts "Tu as fait #{roll}."
			puts "Descend d'une marche."
		else
			puts "Tu as fait #{roll}."
			puts "Reste ici pour le moment."
		end
	else
		puts "Tu as fait #{roll}."
		puts "Reste ici pour le moment."
	end
	return step
end

def tire
	puts "Pour lancer les dés appuie sur entrer"
	puts "> "
	lancé = gets.chomp
	if lancé == ""
		roll = rand(1..6)
	end
	return roll
end

def partie
	puts "Commençons une partie. Le but est d'arriver à 10."
	marches = 10
	step = 0
	coup = 0
	while step < 10
		value = tire
		step = move(value, step)
		coup += 1
		puts "Tu es sur la marche #{step}"
	end
	puts "Bravo, tu as gagné au bout de #{coup} lancés de dés."
	return coup
end


def multi_partie
	stat = 0
	puts "Combien de parties va-t-on jouer?"
	puts "> "
	nb_partie = gets.chomp.to_i
	nb_partie.times do
		stat = stat + partie
	end
	reussite = stat.to_f/nb_partie.to_f
	puts "En moyenne, il a fallut #{reussite} coups pour gagner la partie."
end

multi_partie
