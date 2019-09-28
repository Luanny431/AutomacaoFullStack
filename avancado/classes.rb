class Conta
    attr_accessor :saldo

def deposita(valor)
    #puts 'Depositando a quantia de '+ valor.to_s + ' reais.'
    
    self.saldo += valor
    #self recurso pra invocar um método ou atribut  dentro da própria classe, como se fosse o this. do java

    puts "Depositando a quantia de #{valor} reais."

    #a segunda forma é a melhor de fazer, o código fica mais elegante e não precisa converter a variável

end

end

c = Conta.new

c.saldo = 0.0 #convertendo de intero para float
c.deposita(100.00)

puts c.saldo