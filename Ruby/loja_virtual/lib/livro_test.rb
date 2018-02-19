# coding: utf-8
# Arquivo simples de teste para seguir exemplos do livro

require File.expand_path('lib/loja_virtual')

# Instanciando o objeto biblioteca
biblioteca = Biblioteca.new 

# Instanciando o objeto livro
ruby_introducao_a_programacao = Livro.new("Ruan Valente", "1234", 250, 90.0, :logica)
ruby_introducao_a_orientacao_a_objetos = Livro.new("Ruan Valente", "1234", 300, 92.0, :ruby)

# Metodo para adicionar livros

biblioteca.adiciona ruby_introducao_a_programacao
biblioteca.adiciona ruby_introducao_a_orientacao_a_objetos

biblioteca.livros_por_categoria :teste do |livro|
    puts livro.autor 
end