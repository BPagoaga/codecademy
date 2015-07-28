#=======================
#     CONVENTIONS      #
#=======================

my_variables = variable
def my_methodes ;end
class MyClass ;end
module MyModules ;end
MY_CONSTANTES = constante

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




#/==========================
# expressions simplifiées  #
#===========================

#if/unless

instruction if condition
instruction unless condition


#expression ternaire

booleen ? "instruction si true": "instruction si false"


#case

puts "Salut, toi !"
salut = gets.chomp

# Ajoutez votre expression case ci-dessous !

case salut
when "Anglais" then puts "Hello"
when "Francais" then puts "Bonjour"
when "Allemand" then puts "Guten Tag"
when "Finnois" then puts "Haloo"
else puts "Je ne connais pas cette langue"
end


#affectation conditionnelle : affecte une valeur à une variable si elle est vide

livre_favori = nil
puts livre_favori

livre_favori ||= "Demain les chiens"
puts livre_favori

livre_favori ||= "Ruby - Les fondamentaux"
puts livre_favori

livre_favori = "Ruby - Les fondamentaux"
puts livre_favori


#En Ruby, les méthodes retournent implicitement la dernière expression évaluée

def multiple_de_trois(n)
  n % 3 == 0 ? "True" : "False"
end


#évaluation court-circuit : Cela signifie que Ruby n'observe les deux expressions que si c'est nécessaire. S'il voit
#false && true
#Il s'arrête de lire dès qu'il arrive sur &&, puisqu'il sait que false && n'importe quoi sera faux, quoi qu'il arrive.

def a
  puts "A a été évaluée !"
  return true
end

def b
  puts "B a aussi été évaluée !"
  return true
end

puts a || b
puts "------"
puts a && b


#
mon_tableau = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

mon_tableau.each do |x|
    puts x if x%2 ==0
end




#/===========================
# méthodes natives de Ruby  #
#============================

#Up and Down : Si nous connaissons l'intervalle des nombres que nous voulons créer, il est possible d'utiliser les méthodes .upto et .downto. C'est une solution plus "Rubique" que d'utiliser une boucle for qui s'arrête quand une variable de comptage atteint une certaine valeur. Nous pourrions utiliser .upto pour afficher les nombres d'un intervalle défini :

95.upto(100) { |nombre| print nombre, " " }
# Affiche 95 96 97 98 99 100

"L".upto("P") { |lettre| puts lettre}

# .respond_to?(:sym) => prend un symbole et renvoie true si un objet peut recevoir cette méthode

# .to_s ; .to_i ; .to_sym ; .to_a => transforme en string/integer/symbol/array

# .next => renvoie le nombre qui suit celui qu'on appelle

# opérateur de concaténation : remplace .push

alphabet = ["a", "b", "c"]
alphabet << "d" # Mettez-moi à jour !

string = "Une girafe encerclée par "
string << "des magichiens !" # Moi aussi !

#interpolation de strings 

choses_favorites = ["le Ruby", "les expressos", "les bonbons"]

puts "Certaines de mes choses favorites :"

choses_favorites.each do |chose|
  puts "J'adore #{chose} !"
end




#/===========================
#        Refactoring        #
#============================

#Le réusinage est juste un mot un petit peu compliqué pour dire que nous voulons améliorer la structure ou l'apparence de notre code sans changer ce qu'il fait. 

# if/unless :
puts "Un est plus petit que deux !" if 1 < 2

# opérateur ternaire : condition ? instruction si true : instruction si false
puts 1<2? "Un est plus petit que deux !": "Un n'est pas plus petit que deux."

# case...when...then

puts "Quel est votre langage préférée ?"
langage = gets.chomp

case langage 
when "Ruby" then puts "Ruby est génial pour les applications web !"
when "Python" then puts "Python est génial pour la science."
when "JavaScript" then puts "JavaScript rend les sites tellement plus cool."
when "HTML" then puts "HTML, c'est la base de tous les sites !"
when "CSS" then puts "CSS rend les sites sexys."
else
  puts "Je ne connais pas ce langage!"
end

# for :
3.times { puts "Je suis un génie du réusinage !"}


# Exemple de code réusiné
# Avant :

$VERBOSE = nil    # Ceci vous sera expliqué à la fin de la leçon
require 'prime'   # Ceci est un module. On vous en dit plus très vite !

def n_premiers(n)

  unless n.is_a? Integer
     "n doit être un nombre entier."
  end

  if n <= 0
     "n doit être supérieur à 0."
  end
  
  tableau_premiers = [] if tableau_premiers.nil?
  
  premier = Prime.new
  for nombre in (1..n)
    tableau_premiers.push(premier.next)
  end
   tableau_premiers
end

n_premiers(10)

# Après :

$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def n_premier(n)

  puts "n doit être un entier."  unless n.is_a? Integer

  "n doit être plus grand que 0."  if n <= 0

  tableau_premier ||= []

  prime = Prime.new
  n.times { tableau_premier << prime.next }

end

n_premier(10)

# Un peu plus loin, Ruby 1.9 permet de simplifier un peu plus :

require 'prime'

def n_premiers(n)
  # On vérifie que l'entrée est correcte !
  "n doit être un nombre entier." unless n.is_a? Integer
  "n doit être supérieur à 0." if n <= 0

  # La classe Prime de Ruby 1.9 crée automatiquement le tableau !
  premier = Prime.instance
  premier.first n
end

n_premiers(10)





#/===========================
#    Bloc, Proc & Lambda    #
#============================

#Bloc, appelé dans une méthode via yield
# Définition de la méthode - Appel de la méthode avec un paramètre et le bloc que l'on veut appeler avec yield

def double(nombre)
    
    yield(nombre)
    
end

double(2) { |x| 2 * x }


#Proc => bloc sauvegardable

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Ecrivez votre code sous cette ligne !
arrondi = Proc.new do |x| 
    x.floor
end

# Ecrivez votre au-dessus de cette ligne !
ints = floats.collect(&arrondi)

# Proc & yield :

def bonjour
    yield
end

phrase = Proc.new { puts "Bonjour !" }

bonjour(&phrase)

#Appel direct des procs avec .call

salut = Proc.new { puts "Salut !" }

salut.call

# conversion des symboles en procs :

tableau_nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

tableau_strings = tableau_nombres.collect(&:to_s)


#Lambda

def lambda_demo(un_lambda)
  puts "Je suis une méthode !"
  un_lambda.call
end

lambda_demo(lambda { puts "Je suis le lambda !" })

# Syntaxe du lambda :

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Ecrivez votre code sous cette ligne!

symbolize = lambda { |x| x.to_sym }

# Ecrivez votre code au-dessus de cette ligne !
symboles = strings.collect(&symbolize)

# Exemple

mon_tableau = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Ajoutez votre code ci-dessous

filtre_symbole = lambda { |x| x.is_a? Symbol }
symboles = mon_tableau.select(&filtre_symbole)


#Un bloc est juste un morceau de code entre do .. end ou des {}. Ce n'est pas un objet en lui-même, mais on peut le passer à des méthodes telles que .each ou .select.

#Une proc est un bloc sauvegardé que l'on peut utiliser encore et encore...

#Un lambda est une proc, seulement il fait attention au nombre d'arguments qu'on lui passe. De plus il rend le contrôle à la méthode lorsqu'il a terminé de s’exécuter.

#Les blocs, les procs et les lambdas peuvent avoir la même utilité dans de nombreux cas, mais le contexte exact de votre programme vous aidera à choisir le plus adapté à votre situation.

