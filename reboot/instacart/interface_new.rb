 #cumprimentar

total = 0

puts "Bem vindo a loja"
# apresentar os prod disponiveis da loja
#Lista de produtos
#cada produto tem um nome e preço
produtos ={
   "kiwi": 10,
   "maca": 5,
   "banana": 2
 }
produtos.each {|produto, valor|  puts "#{ produto}: #{ valor}"}

# ou pode fazer a opção
# produtos = {
# {name: "kiwi", price : 10}
# {name: "maca", price : 5}
# {name: " banana", price: 2 }
#  }

#permitir que o usuarios add produtos do carrinho

loop do

puts " escolha seus produtos: "

produto = gets.chomp.to_sym
puts "Vocë escolheu #{produto} no valor de #{produtos[produto]}"
valor = produtos[produto]
total = total + valor unless valor.nil?
puts "Agora seu carrinho está em #{total}"

puts "Escreve 'quit' para sair ou ENTER para continuar?"
option = gets.chomp
break if  option == "quit".to_sym

end






