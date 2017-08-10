require_relative "calculate"




loop do  # pode fazer com loop

#perguntar o primeiro numero
puts "qual seu numero 1?"
num_1= gets.chomp.to_f  # para transformar de string para n. float

#perguntar o segundo numero
puts "qual seu numero 2?"
num_2= gets.chomp.to_f

#calular qual operaçao? (+-/*)
puts "escolha dentre as operaçao  +, -, /, * ?"

operador_escolhido = gets.chomp

if operador_escolhido == "+" || operador_escolhido == "somar"
resultado = num_1 + num_2

elsif operador_escolhido == "-"
resultado = num_1 - num_2

elsif operador_escolhido == "/"
resultado = num_1 / num_2

elsif operador_escolhido == "*"
resultado = num_1 * num_2

else
"nao é possivel calcular "

end

#Resultado

puts resultado



#Se deseja continuar
puts "deseja continuar S/N? "

continuar = gets.chomp
continuar = "S"

break if continuar != "S"

end



=begin
def(x,y,operator)
case operador_escolhido
when "+"  then resultado = X + Y
when "-"  then resultado = X - Y
 when "/"  then resultado = X / Y
 when "*"  then resultado = X * Y
  else

    puts "opcao valida #{operator}"

    end

  para resultado

  resultado= calculate(a, b, operator)
=end

