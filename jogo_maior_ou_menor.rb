#!/bin/env ruby
# encoding: utf-8
def da_boas_vindas
	puts "Bem vindo ao jogo da advinhação"
	puts "Qual o seu nome?"
	nome = gets.strip
	puts "\n\n\n\nVamos começar o jogo para você, #{nome}" 
end

def sorteia_numero_secreto
	puts "\n\n\n\nEscolhendo um número secreto entre 0 e 200.."
	sorteado = 175
	puts "\n\n\n\nEscolhido! que tal adivinhar qual o numero secreto?"	
	return sorteado #return não é necessário
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
	puts "\n\n\n\n"
	puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes}"
	puts "Entre com um número"
	chute = gets.strip
	puts ""
	puts "Será que você acertou? você chutou: #{chute}"
	chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
	acertou = numero_secreto == chute
	if acertou
		puts "Acertou!"
		return true
	else
		maior = numero_secreto > chute
		if maior
			puts "O número secreto é maior que isso!"
		else
			puts "O número secreto é menor que isso!"
		end
		return false
	end
end


#programa principal
da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
	
	chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)

	chutes<< chute

	break if verifica_se_acertou numero_secreto, chute
	end
$end
