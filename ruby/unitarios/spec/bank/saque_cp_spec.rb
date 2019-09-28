require_relative '../../app/bank'

describe ContaPoupanca do
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200)
            end

            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 800.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(200) 
            end

            it 'entao exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'e o saldo final permanece com zeros' do
                expect(@cp.saldo).to eql 0.0
            end
        end


        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(100.00)
                @cp.saca(200) 
            end

            it 'entao exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 100.00
            end
        end

        context 'quando excedo o limite de saque' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(1000) 
            end

            it 'entao exibe a mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo por saque é R$ 500'
            end

            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end