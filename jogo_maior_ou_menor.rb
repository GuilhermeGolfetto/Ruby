#!/bin/env ruby
# encoding: utf-8
def da_boas_vindas
	puts "Bem vindo ao jogo da advinhação!"
	puts "Qual o seu nome?"
	nome = gets.strip
	puts "\n\n\n\nVamos começar o jogo para você, #{nome}" 
	return nome
end

def pede_dificultade
	puts "Qual o nivel de dificuldade que deseja? (1 fácil, 5 dificil)"
	return dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
	case dificuldade
	when 1 
		maximo	= 30
	when 2
		maximo = 60
	when 3
		maximo = 100
	when 4
		maximo = 150
	else
		maximo = 200
	end
	puts "\n\n\n\nEscolhendo um número secreto entre 0 e #{maximo}.."
	sorteado = rand (200) +1
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

def jogar(nome, dificuldade)

	numero_secreto = sorteia_numero_secreto(dificuldade)
	pontos_ate_agora = 1000
	limite_de_tentativas = 5
	chutes = []

	for tentativa in 1..limite_de_tentativas
		
		chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
		
		pontos_a_perder = (chute - numero_secreto).abs/ 2.0
		
		pontos_ate_agora -= pontos_a_perder

		chutes<< chute
		
		if nome == "Guilherme"
			puts "Acertou!"
			break
		end

		break if verifica_se_acertou numero_secreto, chute
		end
	end

	puts "você ganhou #{pontos_ate_agora} pontos."
end

def quer_jogar
	puts "Deseja Jogar novamente? (S/A)"
	quero_jogar = gets.strip
	return quero_jogar == "S"
end


#programa principal
nome = da_boas_vindas
dificuldade = pede_dificultade
while quer jogar
	jogar nome, dificuldade
$end

