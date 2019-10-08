require './spec_helper'

describe 'Caixa de opções', :dropdown do

    it 'item especifico com id' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporário garantir que de fato foi selecionado'
        
        #select('Opção', from: 'elemento')
    end

    it 'item especifico com find' do
        visit '/dropdown'

        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3

        #vai buscar dentro do array de lista o elemento <option> com o texto Scott Lang, se encontrr vai selecionar a opcao
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 5

        #rspec --tag sample dropdown_spec.rb

        #método all traz um array de elementos
        #sample dentro de um array selecione uma opção qualquer pra mim
    end

end