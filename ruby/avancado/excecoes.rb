
#é o try catch do ruby

# begin
#     #tentar algo   
#     file = File.open('./ola.txt')
#     if file 
#         puts file.read
#     end
# rescue => exception
#     #obter um possível erro
#     puts exception
# end

def soma(n1, n2)
    n = n1 + n2
    puts n
rescue => exception
    puts  'Erro ao executar o método'
end

soma(10, '10')
