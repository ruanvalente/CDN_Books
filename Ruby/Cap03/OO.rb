# Começando com OO em Ruby

# # Atribuitos 
# nome = "Linguagem Ruby"
# isbn = "234-956-12"
# numero_paginas = 245
# preco = 69.90
# desconto = 0.1

# nome = "Test Driven Development: Teste e Design no Mundo Real"
# isbn = "123-234-10"
# numero_paginas = 212
# preco = 89.90
# desconto = 0.1
# # Metodos 
# def preco_com_desconto (preco, desconto)
#  preco - (preco * desconto) 
# end
# # Outro metodo

# puts preco_com_desconto(preco, desconto)

# Construindo a classe Livro

# class Livro
#     def initialize(autor, isbn = "1", numero_paginas) 
#         puts "Autor #{autor}, ISBN: #{isbn}, Numero de Paginas #{numero_paginas}"
#     end    
# end

# livro_test = Livro.new("Ruan Valente", 223)
# livro_test