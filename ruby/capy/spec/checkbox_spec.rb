require './spec_helper'

describe 'Caixa de seleção' do

    before(:each) do
        visit '/checkboxes' 
    end

    it 'Marcando uma opção' do        
        check('thor')
    end

    it 'Desmarcando uma opção' do        
        uncheck('antman')
    end

    it 'Marcando com find set true' do        
        find('input[value=cap]').set(true) #marcar opção
    end

    it 'Desmarcando com find set false' do        
        find('input[value=guardians]').set(false) #desmarcar opção
    end

    #check e unckec funcionam para id ou name

    after(:each) do
        sleep 3
    end
end