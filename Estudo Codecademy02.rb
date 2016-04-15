#HASH - chave - valor
breakfast = { "bacon" => "bom",
	"ovo" => "bom",
	"salada" => "saldavel",
	"suco" => "saboroso"
}

#modos de criação
new_hash = {"one" =>1}
new_hash2 = Hash.new

breakfast.each do |key, value|
	puts breakfast[key]
end

matz = { "Nome" => "Yukihiro",
  "Sobrenome" => "Matsumoto",
  "Idade" => 47,
  "Nacionalidade" => "Japanese",
  "Apelido" => "Matz"
}

#vai retornar nil == null == nulo
matz["Rock"] 

matz.each do |key,value|
    puts matz[key]
end

celulares = Hash.new("iPhone")
#agora, dentro desse hash, não existira nil, o valor padrão será iPhone

puts celulares

#funciona também
caras = {
	:nome => "Guilherme",
	:sobrenome => "Golfetto",
	:idade => 21
}

caras.each {
	|key, var|
	puts caras[key]
}
