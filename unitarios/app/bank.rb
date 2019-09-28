class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end


    def saca(valor, max, taxa)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > max) 
            self.mensagem = 'Limite máximo por saque é R$ ' + max.to_s
        else
            self.saldo -= valor + taxa
        end
    end

end


class ContaCorrente < Conta
    def saca(valor, max = 700, taxa = 5) 
        super 
    end
end


class ContaPoupanca < Conta
    def saca(valor, max = 500, taxa = 0)
        super
    end
end

#palavra reservada que procura o mesmo nome do metodo da onde ele esta sendo executado na classe pai
