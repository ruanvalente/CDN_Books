class Biblioteca
    attr_reader :livros
    def initialize
        @livros = {} # Hash iniciado
    end

    def adiciona(livro)
        @livros[livro.categoria] ||= [] # Seta o retorno com um Array
        @livros[livro.categoria] << livro
    end

    def livro
        @livros.values.flatten
    end

    def livros_por_categoria(categoria)
        @livros[categoria].each do |livro|
            yield livro
    end
end
