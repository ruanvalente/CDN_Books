# coding: utf-8

class Livro
    attr_accessor :valor
    attr_reader :categoria
    attr_reader :isbn
    attr_reader :autor

    def initialize(autor, isbn = "1", numero_de_paginas, valor, categoria)
        @autor = autor
        @isbn = isbn
        @numero_de_paginas = numero_de_paginas
        @valor = valor
        @categoria = categoria
    end

    # Sobreescrita do metodo eql?

    def eql?(outro_livro)
        @isbn == outro_livro.isbn
    end
    
    # Sobreescrita do medo hash

    def hash
        @isbn.hash
    end

    def to_s
        "Autor: #{@autor}, ISBN: #{@isbn}, Pág: #{@numero_de_paginas} #{@valor}, Categoria: #{@categoria}"
    end

end

