#/==========================
#       FORMULAIRE         #
#===========================

print "Quel est votre prénom ?"
prenom = gets.chomp
prenom.capitalize!

print "Quel est votre nom de famille ?"
nom = gets.chomp
nom.capitalize!

print "De quelle ville venez-vous ?"
ville = gets.chomp
ville.capitalize!

print "De quel pays venez-vous ?"
pays  = gets.chomp
pays.upcase!

puts "Vous vous appelez #{prenom} #{nom} et vous venez de #{ville}, #{pays}!"





#/==========================
#  STRUCTURES DE CONTROLE  #
#===========================

#if
if condition
	#code
elsif condition
	#code
else
	#code
end


#unless
unless condition
	#code
else
	#code
end


#tests booléens directement dans une variable
vrai = 1 == 1 #true


#comparateurs
# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

# || => OR, ! => NOT


#Daffy Duck

print "SString, ss'il vous plait !: "
saisie= gets.chomp
saisie.downcase!

if saisie.include? "s"
  saisie.gsub!(/s/, "ss")
else
  puts "Rien à changer !"
end
  
puts "Votre string est : #{saisie}"






#/==========================
#   BOUCLES ET ITERATEURS  #
#===========================

#while

i = 0
while i < 5
  puts i 
  i = i+1

end


#until

compteur = 1
until compteur > 10
  puts compteur
  compteur = compteur + 1

end


#assignation : = += -=, ++ et -- sont interdits !


#for

for num in 1..20
puts num
end


#loop

i = 20
loop do
  i -= 1
  print i
  break if i <= 0
end


#next : saute l'instruction à un tour donné si...

i = 20
loop do
  i -= 1
  next if i%2 == 1 #saute l'instruction si i est impair
  print i
  break if i <= 0
end


#each

impairs = [1,3,5,7,9]

# Ajoutez votre code ci-dessous
impairs.each do |x|
  x *= 2
  print x
end


#times

35.times do
  print "Hello World"
end


#or

35.times {
  print "Hello World"
}


#tp : info secrète

puts "Entrez votre texte"
texte = gets.chomp

puts "Entrez le mot secret"
cacher = gets.chomp

mots = texte.split(" ")

mots.each do |mot|
  if mot != cacher
      print mot + " "
  else
      print "INFO. CONFIDENTIELLE "
  end
end


#tp : histogramme

puts "Entrez votre texte"
texte = gets.chomp

mots = texte.split(" ")

frequences = Hash.new(0)

mots.each do |mot|
  frequences[mot] += 1
end

frequences = frequences.sort_by{ |a, b| b }
frequences.reverse!

frequences.each do |a,b|
  puts a + " " + b.to_s
end




#/==========================
#    METHODES BLOCS TRIS   #
#===========================

#methode

def bienvenue
  puts "Bienvenue à Rubyland!"
end

bienvenue

def bienvenue(nom)
  return "Bienvenue dans le monde du Ruby, #{nom}"
end

bienvenue(bernard)


#blocs

mon_tableau = [1, 2, 3, 4, 5]

mon_tableau.each { |i| puts i * i }


#tri
objet.sort! #croissant, ordre alphabétique
objet.sort! { |1,2| 1 <=> 2} #idem
objet.sort! { |1,2| 2 <=> 1} #l'inverse

fruits = ["orange", "pomme", "banane", "poire", "raisins"]

fruits.sort! { |a, b| b <=> a }


#tri bibliotheque

def alphabetique(tab, inv=false)
  if !inv
   tab.sort!
  elsif inv
   tab.reverse    
  end
end

nombres = [5,2,3,6,8,7,5]

puts "#{alphabetique(nombres, true)}"




#/==========================
#      HASH ET SYMBOLES    #
#===========================

# Hash

mon_hash = Hash.new


#iterate on hashes

matz = { "Prenom" => "Yukihiro",
  "Nom" => "Matsumoto",
  "Age" => 47,
  "Nationalite" => "Japonais",
  "Surnom" => "Matz"
}

matz.each do |x,y|
    puts y
end

mon_hash.each do |cle, valeur|
  puts cle, mon_hash[cle]
end


#symbole

mon_premier_symbole = :symbole


#symbole & hash

symbol_hash = {
  :un => 1,
  :deux => 2,    # Remplissez les blancs !
  :trois => 3,
}


#transformer des strings en symboles

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Ajoutez votre code ci-dessous
symboles = []

strings.each do |s| 
  symbole = s.to_sym #.to_s transforme les symboles en strings
  symboles.push(symbole)
end


#.to_sym == .intern


#nouvelle syntaxe

films = {
    Ghost: "James Bond doit sauver le monde d'un fantôme",
    Titanic: "Ca va couler chérie"
}


#select

films_notes = {
  memento: 3,
  primer: 3.5,
  matrix: 5,
  truman_show: 4,
  aube_rouge: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  roi_lion: 3.5
}
# Ajoutez votre code ci-dessous

bons_films = films_notes.select{|nom, note| note > 3 }


#iteration sur les clés ou les valeurs

films_notes = {
  memento: 3,
  primer: 3.5,
  matrix: 5,
  truman_show: 4,
  aube_rouge: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  roi_lion: 3.5
}
# Ajoutez votre code ci-dessous

films_notes.each_key { |x| puts x }

films_notes.each_value { |x| puts x }




#/==========================
#       TP : CRUD films    #
#===========================

#creation du hash

films = {
  Titanic: 2,
  Le_pacte_des_loups: 3,
  Le_loup_de_Wall_Street: 4
}

#choix donnés à l'utilisateur

puts "Entrez un choix :"
puts "ajouter"
puts "modifier"
puts "afficher"
puts "supprimer"

#choix de l'utilisateur

action = gets.chomp.downcase

#définition d'une méthode demandant à l'utilisateur de rentrer le titre d'un film
def titre_film
  puts "Saisissez le nom d'un film"
  titre = gets.chomp.capitalize #on homogénéise le format

  #remplacement des espaces par des underscores

  if titre.include? " "
      titre.gsub!(/ /, "_")
  end

  titre = titre.to_sym #conversion en symbole
  return titre
end

case action
when 'ajouter'
  titre = titre_film
  if films[titre].nil?
    puts "Donnez lui une note entre 0 et 5"
    note = gets.chomp.to_i
    films[titre] = note
    puts "Vous avez donné la note #{note} à #{titre}"
  else
    puts "Ce film existe déjà !"
  end
when 'modifier'
  titre = titre_film
  if films[titre].nil?
    puts "Ce film n'existe pas, veuillez l'ajouter"
  else
    puts "Modifiez la note accordée à ce film"
    note = gets.chomp.to_i
    films[titre] = note
    puts "Vous avez donné la note #{note} à #{titre}"
  end
when 'afficher'
  films.each do |titre, note|
    puts "#{titre}: #{note}"
  end
when 'supprimer'
  titre = titre_film
    if films[titre].nil?
      puts "Ce film n'existe pas ou a déjà été supprimé"
    else
      films.delete(titre)
      puts "Le film #{titre} a bien été supprimé"
    end
else
  puts "Erreur !"
end
