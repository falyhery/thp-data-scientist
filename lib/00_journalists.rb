def nb_journalists

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

puts "Combien y a-t-il de journalistes dans cet array ?"
	
puts "La réponse est: #{B_DATA.size}"
	
puts '-' * 10

end

nb_journalists

################################################

#Combien d'handle contiennent un numéro ?

def handle_with_number

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

def contains_number(str)
	str =~ /[0-9]/
end

count = 0

B_DATA.each do |journalist|
	if contains_number(journalist)
		count = count + 1
	end
end

puts "Combien d'handle contiennent un numéro ?"

puts "La réponse est: #{count}"

puts '-' * 10

end

handle_with_number

################################################

#Combien d'handle contiennent les 4 lettres du prénom "Aude" à la suite
#(sans prendre en compte les majuscules) ?

def handle_with_aude

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

count = 0

B_DATA.each do |nom|
	if nom.include? "aude" or nom.include? "Aude"
		count = count + 1
	end
end

puts "Combien d'handle contiennent les 4 lettres du prénom Aude à la suite
(sans prendre en compte les majuscules) ?"

puts "La réponse est: #{count}" 

puts '-' * 10

end 

handle_with_aude


################################################

#Combien commencent par une majuscule (première lettre juste après le @) ?

def handle_start_with_maj

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

new_journalists = B_DATA.each do |journalist|
	journalist[0] = ""
end

def contains_capital_letter(str)
	str =~/[A-Z]/
end

count = 0

new_journalists.each do |name|
	if contains_capital_letter(name[0])
		count = count + 1
	end
end

puts "Combien commencent par une majuscule (première lettre juste après le @) ?"

puts "La réponse est #{count}" 

puts '-' * 10 

end

handle_start_with_maj


################################################

#Combien contiennent au moins une majuscule? 

def handle_with_maj

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

def contains_uppercase(str)
	str =~ /[A-Z]/
end

count = 0

B_DATA.each do |journalist|
	if contains_uppercase(journalist)
		count = count + 1
	end
end

puts "Combien contiennent au moins une majuscule?"

puts "La réponse est #{count}"

puts '-' * 10

end

handle_with_maj

################################################

#Combien y a-t-il de underscore _ dans tous les pseudos confondus ? 

def underscore_number

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

joined = B_DATA.join

number = joined.count('_')

puts "Combien y a-t-il de underscore _ dans tous les pseudos confondus ?"

puts "La réponse est #{number}"

puts '-' * 10

end

underscore_number


################################################

#Trie la liste de handle par ordre alphabétique.

def sort_array

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

B_DATA.map!(&:downcase)

puts "Voici le tri par ordre alphabétique: "

puts B_DATA.sort_by {|name| name[0]}

puts '-' * 10

end

sort_array


################################################

#Quels sont les 50 handles les plus courts de ce array? 

def short_handles

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

puts "Voici les 50 handles les plus courts: "

new_list = B_DATA.sort_by {|item| item.length}

short_list = new_list[0,50]

puts short_list

puts '-' * 10

end

short_handles


################################################

#Quelle est la position dans l'array de la personne @epenser? 

def find_position

$LOAD_PATH.unshift('.')
require "list_journalists.rb"

puts "La personne @penser est en position: "

puts B_DATA.find_index("@epenser")

end

find_position

################################################