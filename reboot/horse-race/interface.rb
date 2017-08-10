#mostrar quais cavalos há
  #preciso  lista de cavalo
    #1-Branquinho
    #2- Malhadinho
    #3-Pretinho

  cavalos = ["Branquinho", "Malhadinho", "Pretinho"]



#perguntar qual é a aposta do jogador
  # por exempo, jogador escolhe 1

  i=0
  while i < cavalos.length
    cavalos = cavalo(i)
    puts "#{1 + i} - #{cavalo}"  #tem que incrementar pois o comprimento  começa com zero ( index) e o key é 1,2,3
    i += 1
  end

  #para transformar em index uma alternativa seria
  # poderia resolver por while, until  ou for i in ( 1.. cavalo. length-1) do
  # em while seria
puts "em qual cavalo quer apostar ?"
bet = cavalos[gets.chomp.to_1 - 1]

# Sortear um vencedor da lista de cavalo

winner = cavalos.sample ## melhor jeito para selecionar , nao é efetivo o rand

  #traduzir opção do jogador para o nome do cavalo


#dizer pro jogador se ele venceu ou não
  if bet == winner
    puts " voce venceu"
  else
    puts " voce NAO venceu"
  end





