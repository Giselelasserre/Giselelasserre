# Pseudo-code:
# 1. Welcome
puts "Welcome to your Christmas giftlist"

gifts = [
  {"name" => "tenis", "bought" => false},
  {"name" => "thand spiner", "bought" => false},
  {"name" => "meia", "bought" => false}
]
#nao usar na forma simplicadaa de hash s enao perde o index e nao posso usar mais
# 2. Display menu (list / add / delete / mark )

loop do

  puts "Which action [listar|adicionar|deletar|marcar|sair]?"
  action = gets.chomp

  case action
    when "listar"
      puts "as opções de gifts são:"
      #gifts.each_with_index { |gift, index| puts " #{index +1} - #{gift}"} # precisa +1 para corresponder e sair do 0
    gifts.each_with_index do |gift, index|
      name = gift ["name"]
      bought = gift ["bought"]
      #bought = true

      if bought
        status = "[X]"
      else
        status = "[ ]"
      end

      puts " #{index +1} - #{status} #{name}"

    end
    when "marcar"
      puts "qual item (index) quer marcar?" # isto é alterar o bought
        index = gets.chomp.to_i - 1
        gift = gifts [index]
        gift[ "bought" ] = !gift[ "bought" ]


    when "adicionar"
     puts "O que deseja adicionar?"
     gift = gets.chomp # chomp para tirar o \n que vem padrao
     gifts << { "name" => gift, "bought" => false}


    when "deletar" then
      puts "qual item (index) quer deletar?"
         index = gets.chomp.to_i - 1 # precisa transformar em inteiro se nao manda string
          gifts.delete_at(index)

    when "sair" then puts "SAIR do programa"
      break  # coloquei aqui o break pois já tinha esta opção aqui, exclui de baixo
    else
     "Não entendo esse comando"
   end
   puts "Continuar o programa? ( s/n) "
      continuar = gets.chomp
end
#break if continuar != "s"







