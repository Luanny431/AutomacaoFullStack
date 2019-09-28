#ruby é puramente orientado a objetos
#pq no ruby tudo são objetos
#métodos, classes, variáveis

#classe possui atributos e métodos
#caracteristicas e ações

class Carro
    attr_accessor :nome


    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end

end

civic = Carro.new

civic.ligar
civic.nome = 'Civic'

puts civic.nome