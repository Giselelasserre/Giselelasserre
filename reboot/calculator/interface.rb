require_relative "calculate.rb"

continuar = "S"

while option == "S"

#perguntar o primeiro numero
x= gets.chomp.to_f  # para transformar de string para n. float

#perguntar o segundo numero
puts "qual seu numero 2?"
y= gets.chomp.to_f

#calular qual operaçao? (+-/*)
puts "escolha dentre as operaçao  +, -, /, * ?"

operation = gets.chomp

resultado = calculate(x, y, operation)


puts "deseja continuar S/N? "
continuar = gets.chomp
end

puts "obgda pela preferencia "







