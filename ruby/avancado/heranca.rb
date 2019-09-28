
class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end

    def buzinar
        puts "Beep beep"
    end
end


class Carro < Veiculo
    def dirigir
        puts "#{nome} iniciando o trajeto para direção"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto para pilotagem"
    end
end

carro = Carro.new('Civic', 'Honda', 'SI')
carro.dirigir

moto = Moto.new('Lancer', 'Hitchs', 'ECO')
moto.pilotar

