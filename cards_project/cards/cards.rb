`clear`

card_number = [1, 2, 3, 4]
pick_card = card_number.sample(3)
 pick_card.to_a


puts 'what card you wanna hide?'
puts '>1.left card >2.middle card >3.right card'
choice = gets.chomp
hide = (choice.to_i) - 1
last_card = pick_card[hide]
pick_card.delete_at(hide)
if %w[1 2 3 left middle right].include?(choice)
  puts "card is hidden"
  puts pick_card

else
puts "wrong"
end


# #LISTA DE IDEIAS
# # tres das quatro cartas do jogo sao entregues ao jogador, ele esconde uma e ve
# #as outras duas, ao receber as cartas ele recebe uma escolha de esconder a carta:
#  #fazer um seletor pré determinado:
# # > left card  >middle card  >right card
# #left card = item 0 do array middle card = item 1 right card = item 2
# #cartas na mao outra selecao para jogar a primeira carta:
# #example: what card do you wanna play:
# #>the witch
# #>the thief
# #o cpu recebe tres cartas assim como o jogador, mas suas jogadas e
# #carta escondidas sao aleatorias
# #ordem de cartas: thief kills warrior > warrior slashes mage > mage explodes thief
# # +witch+ a carta 4, the witch é a carta coringa, ganhando de todas menos dela mesma
# # the witch sends the soul of the warrior/thief/mage to the doom
# #empates: quando uma carta é igual a do adversario a rodada termina em empate,
# #nao valendo pontos de guerra.
# #vencendo: vencer se baseia em conseguir 2 pontos de guerra, se nao conseguir com
# #as duas cartas na mão, se ativa a carta escondida, se rolar um segundo empate
# #ganha quem fez o unico ponto de guerra da partida, em caso de tres empates
# #a partida é decidida na proxima.
