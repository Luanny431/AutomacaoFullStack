# Instituto de pesquisa e desenvolvimento de produtos ou servicos tecnologicos.
# hoje buscamos mais um profissional pra compor nosso time de qa, nosso principal objetivo é.


Estória: Saque no Caixa Eletrônico 
    Sendo um cliente que é correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito. 

Cenário: Saque em conta corrente
    Dado que eu tenha R$ 1000 em minha conta corrente   
    Quando faço um saque de R$ 200
    Entao meu saldo final deve ser R$ 800

Cenário: Deu ruim não tenho saldo  
    Dado que eu tenha R$ 0 em minha conta corrente   
    Quando faço um saque de R$ 200
    Entao meu saldo final deve ser R$ 800

Cenário: Tenho saldo  mais não o suficiente
    Dado que eu tenha R$ 500 em minha conta corrente   
    Quando faço um saque de R$ 501
    Entao vejo a mensagem  'Saldo insuficiente para saque :('
    E meu saldo final deve ser R$ 500

Cenário: Limite por saque :(
    Dado que eu tenha R$ 1000 em minha conta corrente   
    Quando faço um saque de R$ 701
    Entao vejo a mensagem  'Limite máximo por saque é R$ 700'
    E meu saldo final deve ser R$ 1000

    

