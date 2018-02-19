# Básico da linguagem Ruby
# Váriaveis e tipos básicos

nome = "String" # Variavel nome recebe um valor do tipo "string"
idade = 23 # A variavel idade recebe o valor 23 do tipo Fixnum que é um tipo inteiro em Ruby
peso = 125.90 # A variavel peso recebe o valor 125.90 que é um float que também é do tipo Fixnum
casado = true # A variavel casado recbe um valor do tipo booleano que é verdadeiro o faso
caixa = nil # A variavel caixa recebe o valor Nil que em Ruby é significa que o valor é vazio 

# Formatação de Strings e Ruby
# Podemos usar algo errdado do Perl como:
minha_string = %w{Eu gosto de "Ruby", porque é muito 'Legal'} # isso formatara a string da forma que as escrevemos

# Para verificar o metodo que a variavel pertence e sua respetiva classe usamos o .class (para classes) e .methods (para os metodos)
# Ex:

nome = "String"
nome.methods # Ele vai listar todos metodos que a variavel nome contêm
nome.class # Ele retorna que a classe da mesma é a classe String

# Condicionais e Loops
# Em ruby e assim como outras linguagem temos as estrutras condicionais o IF ELSE WHILE e outros como UNLESS e UNTILS
# Ex IF e ELSE:

if idade >= 18
  puts "Pode entrar"
else
  puts "Você não pode entar"
end

# Isso retorna a saida Pode Entrar pois minha variravel idade contem o valor 23, logo é maior que 18 isso entrando no 
# Primeiro bloco de codigo, e se caso ao contrario (else) ela não tivesse o valor para atender a primeira codição ela
# Entraria na segunda codição imprimindo você não pode entrar.
# No Ruby não usamos chaves {} para determinar um bloco de codigo e sim o END para determinar o fechamento de um bloco
# O Ruby usa indentação com 2 Espaços.

# IF Alinhados

if idade > 18
  puts "Pode entrar"
elsif == 18
  puts "Acho que você pode entar"
else
  puts "Volte para sua casa"
end

# Em Ruby usamos o elsif para adicionar mais uma codição no nosso bloco de codigo diferente do java que usa else if aqui
# Usamos elsif de uma maneira mais elegante.

# While
# Ex:

cont = 0
while cont <= 10
  puts "Numero: #{cont}"
  cont += 1
end

# Isso nos retorna 0..10 e podemos fazer isso de outra forma também usando o for. A linha onde mostra #{cont} isso é uma
# Interprolação onde eu consigo jogar variaveis dentro da string fazendo que o Ruby entenda que a saida é uma variavel 
# E isso funciona com as aspas duplas e não com as simples, pois usando as simples e ele apenas vai retornar a String escrita
# e não o conteudo da variavel

# # FOR
# Existem diversas formas de iterar um determinado número de vezes por um código
# Ruby. Como em outras linguagens, existem os conhecidos while , until e for .
# Sem dúvida, a maneira mais usada em códigos Ruby que você irá se deparar ao longo
# do tempo é o for .
# Desejamos imprimir os números de 1 até 100. Apenas adicionando uma mensa-
# gem ‘Numero: X’ para deixarmos nossas mensagens mais elegantes.

for numero in (1..100)
  puts "Numero: #{numero}"
end

# Isso retorna o 1..100 usando apenas 3 linhas de codigo, poreriamos fazer em uma linha só também

# Unless e Until

# Quando desejamos representar algum valor vazio em Ruby, usamos a palavra reser-
# vada nil . O nil não representa uma String vazia ou o número zero, ele re-
# presenta um valor vazio, um espaço vazio. Quando atribuímos nil a uma variável,
# queremos dizer que ela não possui nenhum valor.
caixa = nil
# A nossa variável caixa , não possui nada dentro dela, ou seja, é vazia.
# Neste contexto, podemos imprimir uma mensagem de boas vindas caso o con-
# teúdo da variável nome tenha algum valor não nulo usando o método nil? :
nome = "Lucas"
puts "Seja bem-vindo #{nome}" if not nome.nil? # => Seja bem-vindo Lucas
# Se executarmos o código acima, a mensagem ‘Seja bem-vindo Lucas’ será exi-
# bida. Mas e no caso da variável possuir o valor nil :
nome = nil
puts "Seja bem-vindo #{nome}" if not nome.nil?
# Neste caso nenhuma mensagem será exibida, a variável nome é nula e o método
# nil? retorna true . Como fazemos a negação usando o not o valor é invertido e
# portanto false .
# Um pouco complicado, não é? Você vai se acostumar rapidamente.

# Substitua o “if not” por “unless”

# Podemos simplificar o código acima usando a condicional negada, o unless (“a
# menos que”, no bom português).
nome = nil
puts "Seja bem-vindo #{nome}" unless nome.nil?
# Podemos ler o código: “Imprima ‘Seja bem vindo ...’ a menos que o nome seja
# nulo”. Na maioria das vezes que implementamos um if not , ele pode ser conver-
# tido para um unless .
# E se eu disser que podemos melhorar ainda mais o nosso código. Interessante,
# não? Pois é, existe algo que você ainda não sabe sobre as variáveis com valor nil .
# Se usadas dentro de condicionais como if e unless a variável quando nil
# assume automaticamente o valor true e no caso contrário, assume o valor false .

# 212.8. Iterações simples com for, while, until

nome = nil
puts "Seja bem vindo #{nome}" if nome
# A variável nome possui o valor nil e assume o valor false na condicional
# anterior, sendo assim nenhuma mensagem é impressa no terminal. Se a variável
# possuir algum valor não nil :
nome = "Lucas"
puts "Seja bem-vindo #{nome}" if nome # => Seja bem-vindo Lucas
# A mensagem Seja bem-vindo Lucas é impressa, pois a variável não é nil e por-
# tanto assume o valor true .

# Until
# Ao contrário do while que termina sua execução quando uma condição falsa
# seja alcançada, a estrutura de repetição until executa um determinado bloco de
# código até que uma condição verdadeira seja encontrada:
numero = 0
until numero == 100
  puts "Numero: #{numero}"
  numero += 1
end
# A diferença é que o código acima executará a impressão da mensagem ‘Numero:
# x’ de 1 até 100, até que o valor da variável numero seja 100 e ocorra o término na
# execução do until .