=begin
    Isso é um comentário
    de Várias Linhas
=end
#Variaveis devem começar com letra minuscula e com underlines
my_name = "Guilherme"
my_age  = 21

#Calculos matemáticos
sum = 13 +379
product = 923 *15
quotient = 13209 / 17

#Métodos de strings "string".method
name = "Guilherme".downcase.reverse.upcase

#Pedindo uma Entrada ao Usuário
print "qual o seu nome?"
first_name = gets.chomp
first_name.capitalize!

print "Qual o seu sobrenome?"
last_name = gets.chomp
last_name.capitalize!

print "Qual é a sua cidade?"
city = gets.chomp
city.capitalize!

print "Qual o seu estado (sigla)?"
state = gets.chomp
state.upcase!

puts "Seu nome é #{first_name} #{last_name} e você mora em #{city},#{state}!"
#Concatenação de string exempo
name = "Guilherme"
puts "Meu nome é #{name}!"

#Codicionais em Ruby
if 1 > 2
	puts "é vero"
elsif 2<1
	puts "fuck the police"
else
	puts "..ou não"
end

#condicionais negativas
hungry = false

unless hungry
  puts "Estou escrevendo programas em Ruby!"
else
  puts "Hora de comer!"
end



is_true = 2 == 2
#true

is_false = 2 == 3
#false


# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true

# test_1 deve ser true
test_1 = (7 == 7) && (3 > 1)

# test_2 = deve ser true
test_2 = (7 == 7) || (5 < 1)

# test_3 = deve ser false
test_3 = !(7 == 7)


print "Digite sua string"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th") #SUBSTITUI O S PELO TH
else
    puts "nada a fazer"
end

puts "O que vc escreveu #{user_input}"

#While
i = 0
while i < 5
  puts i
  # Coloque seu código aqui!
  i += 1
end

#For
for num in 1..20
    puts num #inclui o 20
end

for num in 1...20
    puts num #não inclui o 20
end

#teste While
i = 1
while i <= 50 do
    print i
    i += 1
end

#teste until
i = 1
until i == 51 do
    print i
    i += 1
end

#teste for
for i in 1..50
    print i
end

#Testte loop
m = 0
loop do
    m +=1
    print "Ruby!"
    break if m == 30
end

#usando o .times
30.times { print "Ruby!" }

#loop infinito
loop { print "Hello, World!" }

i = 20
loop do
	i -= 1
	print "#{i}"
	break if i <= 0
end

i = 20
loop do
	i -= 1
	next if i % 2 != 0
	print "#{i}"
	break if i <= 0
end

#array
my_array = [1,2,3,4,5]


do # = {

end # = }

#'foreach' do Ruby
array.each do |x|
  x += 10
  print "#{x}"
end

odds = [1,3,5,7,9]

odds.each do |x|
	x *= 2
	print"#{x}"
end

#programa alterando entrada do usuario
puts "Digite o texto a ser analisado:"
text = gets.chomp
puts "digite a palavra escolhida"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
	if word == redact
		print "REDACTED "
	else
		print word + " "
	end
end

#ARRAYS
my_array = [2,4,6,8]
print "#{my_array[3]}"

string_array = ["Olá","Mundo"]

multi_d_array = [
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0],
    [0,0,0,0]
]

multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [
	["Olá","Mundo"],
	["Sou","Guilherme"],
	["Vou","Dominar"],
	["O","Mundo"]
]

#HASH
my_hash = { "nome" => "Eric",
  "idade" => 26,
  "fome?" => true
}

puts my_hash["nome"]
puts my_hash["idade"]
puts my_hash["fome?"]

pets = Hash.new
pets["Katy Perry"] = "dog"
puts pets["Katy Perry"]


languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |element| puts element }

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array|
    sub_array.each { | element| 
        puts element}
}

secret_identities = {
  "O Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Mulher Maravilha" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |super_hero, identitie|
    puts "#{super_hero}: #{identitie}"
end



my_array = [
	[2,4,6,8],
	[1,3,5,7,9]
]


my_hash = Hash.new
my_hash["Apple"] = "Fruit"
my_hash["Lemon"] = "Fruit"

lunch_order = {
  "Ryan" => "sopa",
  "Eric" => "hamburger",
  "Jimmy" => "sanduíche",
  "Sasha" => "salada",
  "Cole" => "taco"
}

lunch_order.each do
    |nome,comida|
    puts "#{comida}"
end

#programa histograma
puts "Digite seu texto:"
text = gets.chomp
words =text.split
frequencies = Hash.new(0)
words.each do
	|word|
	frequencies["#{word}"] += 1
end
frequencies = frequencies.sort_by do
	|word,count|
	count
end
frequencies.reverse!
frequencies.each do
    |word, count|
    puts word + " " + count.to_s
end

#métodos
def greeting
	puts "Olá Mundo dos Métodos"
end

greeting


def cubertino(n)
  puts n ** 3
end

cubertino(8)

#multiplos parametros
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("E aí", "Justin", "Ben", "Kevin Sorbo")

def add(n1,n2)
	return n1+n2
end

