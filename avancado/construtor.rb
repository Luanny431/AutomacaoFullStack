# construtor - > método invocado toda vez que eu crio um objeto.
# Exemplo toda vez que for chamado um new, ele já invoca o método que prepara a classe e deixa ela pronta pra trabalhar com as nformações.
# em ruby o método initialize é p contrutor. método chamado automaticamente toda vez que faz um new.
# o construtor pode receber um argumento como qualquer método


# Instituto de pesquisa e desenvolvimento de produtos ou servicos tecnologicos.
# hoje buscamos mais um profissional pra compor nosso time de qa, nosso principal objetivo é.




class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0 
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor
    puts "Depositando a quantia de #{valor} reais, no nome de #{nome}."
  end
end

c = Conta.new('Papito')

c.deposita(100.00)
c.deposita(10.00)
puts c.saldo

