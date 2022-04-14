def half_pyramid
	puts "Combien d'étage veux-tu construire pour ta pyramide (choisis un nombre impair)"
	print "> "
	etages = gets.chomp.to_i
	etages = etages/2 + 1
	brick = "#"
	vide = " "
	pyramide = []
	etages.times do |level|
		pyramide[level] = vide * (etages - (level + 1)) +  brick * (level + 1)
	end
	return pyramide
end


def full_pyramid
	pyramide = half_pyramid
	etages = pyramide.size
	etages.times do |level|
		marche = pyramide[level] + "#" * level
		pyramide[level] = marche
	end
	return pyramide
end

def wtf_pyramid
	pyramide = full_pyramid
	etages = pyramide.size - 1
	etages.times do |level|
		marche = pyramide[etages - level - 1]
		pyramide << marche
	end
	puts pyramide
end

wtf_pyramid